.class Lcom/sekai/bank/ui/profile/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/profile/ProfileFragment;->loadUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sekai/bank/models/responses/ApiResponse<",
        "Lcom/sekai/bank/models/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/profile/ProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-profile-ProfileFragment$1()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/profile/ProfileFragment;Z)V

    .line 103
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    sget v1, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$mshowError(Lcom/sekai/bank/ui/profile/ProfileFragment;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-profile-ProfileFragment$1(Lretrofit2/Response;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/profile/ProfileFragment;Z)V

    .line 86
    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/User;

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$fputcurrentUser(Lcom/sekai/bank/ui/profile/ProfileFragment;Lcom/sekai/bank/models/User;)V

    .line 88
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$mupdateUI(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {v0}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    sget v0, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$mshowError(Lcom/sekai/bank/ui/profile/ProfileFragment;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 100
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/sekai/bank/ui/profile/ProfileFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment$1;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Lcom/sekai/bank/models/User;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$1;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/profile/ProfileFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/profile/ProfileFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment$1;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
