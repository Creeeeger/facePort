.class public Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;
.super Landroidx/preference/SecDropDownPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBottom:I

.field public mIconVisible:Z

.field public mLeft:I

.field public mRight:I

.field public mTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04021c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mIconVisible:Z

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/SecDropDownPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mIconVisible:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mLeft:I

    iget v1, p0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mTop:I

    iget v2, p0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mRight:I

    iget p0, p0, Lcom/samsung/android/settings/widget/SecAIKeyDropDownPreference;->mBottom:I

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :cond_0
    return-void
.end method
