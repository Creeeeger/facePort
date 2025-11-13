.class public Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$Builder;,
        Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_MESSAGE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_TITLE:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    if-eqz v1, :cond_1

    .line 12
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_BUTTON_TEXT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    .line 13
    invoke-virtual {v2}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v1, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->ERROR_DIALOG_BUTTON_INTENT:Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/routines/v3/internal/ExtraKey;->getValue()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;->c:Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    .line 18
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-object v0
.end method
