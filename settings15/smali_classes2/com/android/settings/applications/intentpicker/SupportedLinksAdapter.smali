.class public final Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;
.super Landroid/widget/BaseAdapter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWrapperList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0bd7

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    const-string v3, "SupportedLinksAdapter"

    const-string v4, "getView: RTL direction."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v1, v2

    invoke-virtual {v0, p3, p3, v1, p3}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object p3, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mLastOwnerName:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const v3, 0x7f140378

    invoke-virtual {v1, v3, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p3, p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mHost:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    iget-boolean p3, p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsEnabled:Z

    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    iget-object p3, p0, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;->mWrapperList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;

    iget-boolean p3, p3, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper;->mIsChecked:Z

    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    new-instance p3, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0, p1}, Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/intentpicker/SupportedLinksAdapter;Landroid/widget/CheckedTextView;I)V

    invoke-virtual {v0, p3}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
