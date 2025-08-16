.class Lcom/sekai/bank/ui/pin/PinActivity$5;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/pin/PinActivity;->verifyPinInBackground(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sekai/bank/ui/pin/PinActivity;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/pin/PinActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 393
    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$2$com-sekai-bank-ui-pin-PinActivity$5()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-string v1, "Network error during PIN verification"

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget-object v1, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputcurrentState(Lcom/sekai/bank/ui/pin/PinActivity;Lcom/sekai/bank/ui/pin/PinActivity$PinState;)V

    .line 430
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputfirstPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-pin-PinActivity$5()V
    .locals 4

    .line 400
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-class v2, Lcom/sekai/bank/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    const-string v1, "from_pin_setup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 403
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-class v3, Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    const-string v2, "mode"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v2, "fallback"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-virtual {v1, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->startActivity(Landroid/content/Intent;)V

    .line 409
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/pin/PinActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onResponse$1$com-sekai-bank-ui-pin-PinActivity$5(Lretrofit2/Response;)V
    .locals 3

    .line 397
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

    .line 399
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sekai/bank/ui/pin/PinActivity$5$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$5;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 413
    :cond_0
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 415
    const-string p1, "Failed to verify PIN after setup"

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget-object v0, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputcurrentState(Lcom/sekai/bank/ui/pin/PinActivity;Lcom/sekai/bank/ui/pin/PinActivity$PinState;)V

    .line 419
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputfirstPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 420
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

    :goto_0
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

    .line 427
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    new-instance p2, Lcom/sekai/bank/ui/pin/PinActivity$5$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/pin/PinActivity$5$$ExternalSyntheticLambda2;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$5;)V

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
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

    .line 396
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$5;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    new-instance v0, Lcom/sekai/bank/ui/pin/PinActivity$5$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/sekai/bank/ui/pin/PinActivity$5$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$5;Lretrofit2/Response;)V

    invoke-virtual {p1, v0}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
