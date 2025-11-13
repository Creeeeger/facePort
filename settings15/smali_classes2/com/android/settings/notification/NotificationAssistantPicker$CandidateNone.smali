.class public final Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/notification/NotificationAssistantPicker$CandidateNone;->mContext:Landroid/content/Context;

    const v0, 0x7f141a3f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
