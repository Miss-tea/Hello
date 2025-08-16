.class Lcom/sekai/bank/ui/send/SendMoneyFragment$1;
.super Ljava/lang/Object;
.source "SendMoneyFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sekai/bank/ui/send/SendMoneyFragment;->setupKeyboardHandling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;


# direct methods
.method constructor <init>(Lcom/sekai/bank/ui/send/SendMoneyFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onGlobalLayout$0$com-sekai-bank-ui-send-SendMoneyFragment$1(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 0
    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [I

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 102
    aget v0, v0, v1

    .line 103
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, p2, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x64

    .line 107
    iget-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {p1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/core/widget/NestedScrollView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 91
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/widget/NestedScrollView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 92
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    int-to-double v2, v2

    int-to-double v4, v1

    const-wide v6, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-virtual {v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$1;->this$0:Lcom/sekai/bank/ui/send/SendMoneyFragment;

    invoke-static {v2}, Lcom/sekai/bank/ui/send/SendMoneyFragment;->-$$Nest$fgetbinding(Lcom/sekai/bank/ui/send/SendMoneyFragment;)Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sekai/bank/databinding/FragmentSendMoneyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object v2

    new-instance v3, Lcom/sekai/bank/ui/send/SendMoneyFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/sekai/bank/ui/send/SendMoneyFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/sekai/bank/ui/send/SendMoneyFragment$1;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Landroidx/core/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
