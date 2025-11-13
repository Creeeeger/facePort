.class public Lcom/samsung/android/settings/provider/routinedirectaction/RoutineDirectActionProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCommander:Lcom/samsung/android/settings/bixby/ActionCommand;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/provider/routinedirectaction/RoutineDirectActionProvider;->mCommander:Lcom/samsung/android/settings/bixby/ActionCommand;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/provider/routinedirectaction/RoutineDirectActionProvider;->mCommander:Lcom/samsung/android/settings/bixby/ActionCommand;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/bixby/ActionCommand;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/bixby/ActionCommand;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/provider/routinedirectaction/RoutineDirectActionProvider;->mCommander:Lcom/samsung/android/settings/bixby/ActionCommand;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/provider/routinedirectaction/RoutineDirectActionProvider;->mCommander:Lcom/samsung/android/settings/bixby/ActionCommand;

    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/settings/bixby/ActionCommand;->execute(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
