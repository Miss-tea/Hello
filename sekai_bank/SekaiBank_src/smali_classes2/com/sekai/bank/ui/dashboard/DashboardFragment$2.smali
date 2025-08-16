.class Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;
.super Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadBalance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback<",
        "Lcom/sekai/bank/models/responses/BalanceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Lcom/sekai/bank/ui/dashboard/DashboardFragment-IA;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load balance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mshowError(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fputisLoadingBalance(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Z)V

    .line 203
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mcheckAndStopRefresh(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onSuccess(Lcom/sekai/bank/models/responses/BalanceResponse;)V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/models/responses/BalanceResponse;->getBalance()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mupdateBalanceDisplay(Lcom/sekai/bank/ui/dashboard/DashboardFragment;D)V

    .line 195
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fputisLoadingBalance(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Z)V

    .line 196
    iget-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mcheckAndStopRefresh(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 191
    check-cast p1, Lcom/sekai/bank/models/responses/BalanceResponse;

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$2;->onSuccess(Lcom/sekai/bank/models/responses/BalanceResponse;)V

    return-void
.end method
