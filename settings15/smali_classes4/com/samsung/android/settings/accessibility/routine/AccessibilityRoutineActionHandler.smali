.class public abstract Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;


# static fields
.field protected static final ERROR_TYPE:I = 0x1

.field protected static final ERROR_TYPE_EXCLUSIVE:I = 0x64


# virtual methods
.method public abstract getActionTag()Ljava/lang/String;
.end method

.method public getErrorDialogMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getErrorDialogTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f141f48

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onRequestErrorDialogContents(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;->getErrorDialogTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/routine/AccessibilityRoutineActionHandler;->getErrorDialogMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p0, p3}, Lcom/samsung/android/sdk/routines/v3/data/ErrorContents;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/routines/v3/data/ErrorContents$DialogButton;)V

    return-object p1
.end method
