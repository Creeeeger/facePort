.class public Lcom/samsung/android/settings/widget/SecProgressPreference;
.super Landroidx/preference/SecPreference;
.source "SecProgressPreference.java"


# instance fields
.field private mProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget p1, Lcom/android/settings/R$layout;->sec_widget_preference_progress:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 35
    sget p1, Lcom/android/settings/R$layout;->sec_widget_progress_bar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 46
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 47
    iget p0, p0, Lcom/samsung/android/settings/widget/SecProgressPreference;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
