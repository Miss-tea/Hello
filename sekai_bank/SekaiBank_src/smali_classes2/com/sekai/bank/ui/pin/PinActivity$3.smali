.class Lcom/sekai/bank/ui/pin/PinActivity$3;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/pin/PinActivity;->verifyCurrentPin(Ljava/lang/String;)V
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

.field final synthetic val$pin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    iput-object p2, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-pin-PinActivity$3()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V

    .line 346
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget v1, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-pin-PinActivity$3(Lretrofit2/Response;Ljava/lang/String;)V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V

    .line 326
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

    .line 328
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputoldPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget-object p2, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->NEW_PIN:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputcurrentState(Lcom/sekai/bank/ui/pin/PinActivity;Lcom/sekai/bank/ui/pin/PinActivity$PinState;)V

    .line 330
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 334
    const-string p1, "Current PIN is incorrect"

    .line 336
    :cond_1
    iget-object p2, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p2, p1}, Lcom/sekai/bank/utils/SnackbarHelper;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

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

    .line 344
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    new-instance p2, Lcom/sekai/bank/ui/pin/PinActivity$3$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/pin/PinActivity$3$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$3;)V

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
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

    .line 323
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$3;->val$pin:Ljava/lang/String;

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/sekai/bank/ui/pin/PinActivity$3$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$3;Lretrofit2/Response;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
