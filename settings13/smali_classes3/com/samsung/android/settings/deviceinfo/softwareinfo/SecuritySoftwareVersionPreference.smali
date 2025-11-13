.class public Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecuritySoftwareVersionPreference;
.super Landroidx/preference/Preference;
.source "SecuritySoftwareVersionPreference.java"


# instance fields
.field private summaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 19
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 20
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecuritySoftwareVersionPreference;->summaryView:Landroid/widget/TextView;

    const v0, 0x7fffffff

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 22
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecuritySoftwareVersionPreference;->summaryView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method
