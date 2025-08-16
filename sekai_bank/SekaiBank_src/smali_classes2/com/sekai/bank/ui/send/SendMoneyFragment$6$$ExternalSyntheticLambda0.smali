.class public final synthetic Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sekai/bank/ui/send/SendMoneyFragment$6;

.field public final synthetic f$1:Lretrofit2/Response;


# direct methods
.method public synthetic constructor <init>(Lcom/sekai/bank/ui/send/SendMoneyFragment$6;Lretrofit2/Response;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;->f$0:Lcom/sekai/bank/ui/send/SendMoneyFragment$6;

    iput-object p2, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;->f$0:Lcom/sekai/bank/ui/send/SendMoneyFragment$6;

    iget-object v1, p0, Lcom/sekai/bank/ui/send/SendMoneyFragment$6$$ExternalSyntheticLambda0;->f$1:Lretrofit2/Response;

    invoke-virtual {v0, v1}, Lcom/sekai/bank/ui/send/SendMoneyFragment$6;->lambda$onResponse$0$com-sekai-bank-ui-send-SendMoneyFragment$6(Lretrofit2/Response;)V

    return-void
.end method
