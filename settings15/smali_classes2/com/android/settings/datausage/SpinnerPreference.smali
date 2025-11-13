.class public Lcom/android/settings/datausage/SpinnerPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# instance fields
.field public mAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field public mCurrentObject:Ljava/lang/Object;

.field public mItemView:Landroid/view/View;

.field public mItemViewVisible:Z

.field public mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public final mOnSelectedListener:Lcom/android/settings/datausage/SpinnerPreference$1;

.field public mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mItemViewVisible:Z

    new-instance p1, Lcom/android/settings/datausage/SpinnerPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/SpinnerPreference$1;-><init>(Lcom/android/settings/datausage/SpinnerPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mOnSelectedListener:Lcom/android/settings/datausage/SpinnerPreference$1;

    const p1, 0x7f0d0887

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final getSelectedItem()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mItemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mItemViewVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0484

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object p0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mOnSelectedListener:Lcom/android/settings/datausage/SpinnerPreference$1;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public final performClick(Landroid/view/View;)V
    .locals 0

    const p0, 0x7f0a0484

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public final setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public final setSelection(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mPosition:I

    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->mCurrentObject:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
