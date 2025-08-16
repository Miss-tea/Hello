.class synthetic Lcom/sekai/bank/ui/transactions/TransactionAdapter$1;
.super Ljava/lang/Object;
.source "TransactionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sekai/bank/ui/transactions/TransactionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sekai$bank$models$Transaction$TransactionStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 121
    invoke-static {}, Lcom/sekai/bank/models/Transaction$TransactionStatus;->values()[Lcom/sekai/bank/models/Transaction$TransactionStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$1;->$SwitchMap$com$sekai$bank$models$Transaction$TransactionStatus:[I

    :try_start_0
    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->COMPLETED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    invoke-virtual {v1}, Lcom/sekai/bank/models/Transaction$TransactionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$1;->$SwitchMap$com$sekai$bank$models$Transaction$TransactionStatus:[I

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->PENDING:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    invoke-virtual {v1}, Lcom/sekai/bank/models/Transaction$TransactionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/sekai/bank/ui/transactions/TransactionAdapter$1;->$SwitchMap$com$sekai$bank$models$Transaction$TransactionStatus:[I

    sget-object v1, Lcom/sekai/bank/models/Transaction$TransactionStatus;->FAILED:Lcom/sekai/bank/models/Transaction$TransactionStatus;

    invoke-virtual {v1}, Lcom/sekai/bank/models/Transaction$TransactionStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
