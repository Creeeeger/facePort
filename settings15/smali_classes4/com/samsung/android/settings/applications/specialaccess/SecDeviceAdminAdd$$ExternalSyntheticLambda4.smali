.class public final synthetic Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    sget p0, Lcom/samsung/android/settings/applications/specialaccess/SecDeviceAdminAdd;->$r8$clinit:I

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

    const-string p0, "SecDeviceAdminAdd"

    const-string p1, "Can not activate device-admin with KeyEvent from non-system app."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
