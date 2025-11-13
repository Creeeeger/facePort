.class public final Lcom/android/settingslib/development/SystemPropPoker;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sInstance:Lcom/android/settingslib/development/SystemPropPoker;


# instance fields
.field public mBlockPokes:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settingslib/development/SystemPropPoker;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    sput-object v0, Lcom/android/settingslib/development/SystemPropPoker;->sInstance:Lcom/android/settingslib/development/SystemPropPoker;

    return-void
.end method


# virtual methods
.method public createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;
    .locals 0

    new-instance p0, Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-object p0
.end method

.method public final poke()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/development/SystemPropPoker;->mBlockPokes:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/development/SystemPropPoker;->createPokerTask()Lcom/android/settingslib/development/SystemPropPoker$PokerTask;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
