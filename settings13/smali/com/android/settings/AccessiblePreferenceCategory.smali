.class public Lcom/android/settings/AccessiblePreferenceCategory;
.super Landroidx/preference/SecPreferenceCategory;
.source "AccessiblePreferenceCategory.java"


# instance fields
.field private mContentDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/preference/SecPreferenceCategory;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroidx/preference/SecPreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 43
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/android/settings/AccessiblePreferenceCategory;->mContentDescription:Ljava/lang/String;

    return-void
.end method
