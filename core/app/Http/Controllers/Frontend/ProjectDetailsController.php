<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Project;
use App\Models\User;
use Modules\Subscription\Http\Controllers\Frontend\FrontendSubscriptionController;

class ProjectDetailsController extends Controller
{
    public function __construct(private FrontendJobsController $jobsController, private FrontendSubscriptionController $subscriptionController)
    {
     //
    }

    //project details
    public function project_details($username,$slug=null)
    {
        if($username == 'jobs' && $slug == "all"){
            //: now call frontendjobscontroller method jobs for getting all content
            return $this->jobsController->jobs();
        }

        if($username == 'subscriptions' && $slug == "all"){
            //: now call FrontendSubscriptionController method subscriptions for getting all content
            return $this->subscriptionController->subscriptions();
        }

        if($slug != 'admin'){
            $project = Project::where('slug',$slug)->first();
            if(!empty($project)){
                $user = User::with('user_introduction','user_country','user_state','user_city')->where('id',$project->user_id)->first();
            }else{
                return back();
            }
            return  view('frontend.pages.project-details.project-details',compact('project','user'));
        }else{
            return view('backend.pages.auth.login');
        }
    }

    //load more review
    public function load_more_review()
    {
        $pagination_limit = 10;
        $project_id = request()->project_id;
        return view('frontend.pages.project-details.reviews', compact("pagination_limit","project_id"))->render();
    }
}
