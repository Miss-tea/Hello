.class abstract Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/dashboard/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ApiCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/sekai/bank/models/responses/ApiResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;


# direct methods
.method private constructor <init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Lcom/sekai/bank/ui/dashboard/DashboardFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-dashboard-DashboardFragment$ApiCallback(Ljava/lang/Throwable;)V
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Network error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-dashboard-DashboardFragment$ApiCallback(Lretrofit2/Response;)V
    .locals 1

    .line 294
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

    .line 295
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_1

    .line 300
    :cond_0
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sekai/bank/models/responses/ApiResponse;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/ApiResponse;->getError()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown error"

    .line 301
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->onError(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected abstract onError(Ljava/lang/String;)V
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 309
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 310
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

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
            "TT;>;>;",
            "Lretrofit2/Response<",
            "Lcom/sekai/bank/models/responses/ApiResponse<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 292
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
