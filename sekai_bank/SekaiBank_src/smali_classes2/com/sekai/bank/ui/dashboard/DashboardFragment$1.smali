.class Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;
.super Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;
.source "DashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/dashboard/DashboardFragment;->loadUserProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback<",
        "Lcom/sekai/bank/models/User;",
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

    .line 171
    iput-object p1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$ApiCallback;-><init>(Lcom/sekai/bank/ui/dashboard/DashboardFragment;Lcom/sekai/bank/ui/dashboard/DashboardFragment-IA;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Profile load failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DashboardFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/sekai/bank/models/User;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/dashboard/DashboardFragment;)Lcom/sekai/bank/databinding/FragmentDashboardBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/sekai/bank/databinding/FragmentDashboardBinding;->welcomeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    sget v2, Lcom/sekai/bank/R$string;->welcome_back:I

    invoke-virtual {p1}, Lcom/sekai/bank/models/User;->getUsername()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;->this$0:Lcom/sekai/bank/ui/dashboard/DashboardFragment;

    invoke-virtual {p1}, Lcom/sekai/bank/models/User;->getBalance()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sekai/bank/ui/dashboard/DashboardFragment;->-$$Nest$mupdateBalanceDisplay(Lcom/sekai/bank/ui/dashboard/DashboardFragment;D)V

    :cond_0
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

    .line 171
    check-cast p1, Lcom/sekai/bank/models/User;

    invoke-virtual {p0, p1}, Lcom/sekai/bank/ui/dashboard/DashboardFragment$1;->onSuccess(Lcom/sekai/bank/models/User;)V

    return-void
.end method
