.class Lcom/sekai/bank/ui/pin/PinActivity$2;
.super Ljava/lang/Object;
.source "PinActivity.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/pin/PinActivity;->setupPin(Ljava/lang/String;)V
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

    .line 281
    iput-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    iput-object p2, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->val$pin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailure$1$com-sekai-bank-ui-pin-PinActivity$2()V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V

    .line 308
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget v1, Lcom/sekai/bank/R$string;->error_network:I

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget-object v1, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputcurrentState(Lcom/sekai/bank/ui/pin/PinActivity;Lcom/sekai/bank/ui/pin/PinActivity$PinState;)V

    .line 310
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputfirstPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {v0}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mclearAndContinue(Lcom/sekai/bank/ui/pin/PinActivity;)V

    return-void
.end method

.method synthetic lambda$onResponse$0$com-sekai-bank-ui-pin-PinActivity$2(Lretrofit2/Response;Ljava/lang/String;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$msetLoadingState(Lcom/sekai/bank/ui/pin/PinActivity;Z)V

    .line 287
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

    .line 290
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mverifyPinInBackground(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {p1}, Lcom/sekai/bank/utils/SnackbarHelper;->getErrorFromResponse(Lretrofit2/Response;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget p2, Lcom/sekai/bank/R$string;->error_generic:I

    invoke-virtual {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    :cond_1
    iget-object p2, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    invoke-static {p2, p1}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$mshowError(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    sget-object p2, Lcom/sekai/bank/ui/pin/PinActivity$PinState;->FIRST_ENTRY:Lcom/sekai/bank/ui/pin/PinActivity$PinState;

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputcurrentState(Lcom/sekai/bank/ui/pin/PinActivity;Lcom/sekai/bank/ui/pin/PinActivity$PinState;)V

    .line 298
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/sekai/bank/ui/pin/PinActivity;->-$$Nest$fputfirstPin(Lcom/sekai/bank/ui/pin/PinActivity;Ljava/lang/String;)V

    .line 299
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

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

    .line 306
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    new-instance p2, Lcom/sekai/bank/ui/pin/PinActivity$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/sekai/bank/ui/pin/PinActivity$2$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$2;)V

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

    .line 284
    iget-object p1, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->this$0:Lcom/sekai/bank/ui/pin/PinActivity;

    iget-object v0, p0, Lcom/sekai/bank/ui/pin/PinActivity$2;->val$pin:Ljava/lang/String;

    new-instance v1, Lcom/sekai/bank/ui/pin/PinActivity$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, v0}, Lcom/sekai/bank/ui/pin/PinActivity$2$$ExternalSyntheticLambda1;-><init>(Lcom/sekai/bank/ui/pin/PinActivity$2;Lretrofit2/Response;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/sekai/bank/ui/pin/PinActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
