.class Lcom/sekai/bank/ui/profile/ProfileFragment$2;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/profile/ProfileFragment;->performLogout()V
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
        "Ljava/lang/Void;",
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

    .line 154
    iput-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-profile-ProfileFragment$2()V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$fgettokenManager(Lcom/sekai/bank/ui/profile/ProfileFragment;)Lcom/sekai/bank/utils/TokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->clearTokens()Ljava/util/concurrent/CompletableFuture;

    .line 172
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$mnavigateToAuth(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-profile-ProfileFragment$2()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$fgettokenManager(Lcom/sekai/bank/ui/profile/ProfileFragment;)Lcom/sekai/bank/utils/TokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sekai/bank/utils/TokenManager;->clearTokens()Ljava/util/concurrent/CompletableFuture;

    .line 161
    iget-object v0, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/profile/ProfileFragment;->-$$Nest$mnavigateToAuth(Lcom/sekai/bank/ui/profile/ProfileFragment;)V

    return-void
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 168
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/sekai/bank/ui/profile/ProfileFragment$2$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$2$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment$2;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    .line 157
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/sekai/bank/ui/profile/ProfileFragment$2;->this$0:Lcom/sekai/bank/ui/profile/ProfileFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/profile/ProfileFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/sekai/bank/ui/profile/ProfileFragment$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/profile/ProfileFragment$2$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/profile/ProfileFragment$2;)V

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
