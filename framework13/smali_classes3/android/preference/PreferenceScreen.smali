.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDialog:Landroid/app/Dialog;

.field private greylist-max-o mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mDividerSpecified:Z

.field private greylist-max-o mLayoutResId:I

.field private greylist-max-r mListView:Landroid/widget/ListView;

.field private greylist mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 123
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    const v1, 0x1090105

    iput v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    .line 125
    sget-object v1, Lcom/android/internal/R$styleable;->PreferenceScreen:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 130
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    .line 133
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    nop

    .line 135
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-boolean v2, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    return-void
.end method

.method private greylist-max-o showDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .line 209
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    :cond_0
    nop

    .line 215
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 216
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Landroid/preference/PreferenceScreen;->mLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 217
    .local v2, "childPrefScreen":Landroid/view/View;
    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 218
    .local v3, "titleView":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 219
    iget-boolean v5, p0, Landroid/preference/PreferenceScreen;->mDividerSpecified:Z

    if-eqz v5, :cond_1

    .line 220
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 223
    :cond_1
    iget-object v4, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 226
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 227
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v6

    invoke-direct {v5, v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 228
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 229
    if-eqz v3, :cond_2

    .line 230
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 232
    :cond_2
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    goto :goto_0

    .line 234
    :cond_3
    instance-of v6, v3, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 235
    move-object v6, v3

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    :goto_0
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 242
    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 243
    if-eqz p1, :cond_5

    .line 244
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 248
    :cond_5
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 250
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 251
    return-void
.end method


# virtual methods
.method public whitelist bind(Landroid/widget/ListView;)V
    .locals 2
    .param p1, "listView"    # Landroid/widget/ListView;

    .line 182
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    sget-boolean v0, Landroid/view/View;->sIsSamsungBasicInteraction:Z

    if-eqz v0, :cond_1

    .line 185
    iget-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsChangedCategoryBG:Z

    if-eqz v0, :cond_0

    .line 186
    iget v0, p0, Landroid/preference/PreferenceScreen;->mCategoryBGColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->semSetBottomColor(I)V

    .line 187
    const/16 v0, 0xf

    iget v1, p0, Landroid/preference/PreferenceScreen;->mCategoryBGColor:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->semSetRoundedCornerColor(II)V

    .line 189
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->semSetRoundedCorners(I)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 191
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 194
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 197
    return-void
.end method

.method public whitelist getDialog()Landroid/app/Dialog;
    .locals 1

    .line 264
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public whitelist getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected whitelist isOnSameScreenAsChildren()Z
    .locals 1

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onClick()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 206
    return-void

    .line 202
    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 171
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 255
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 256
    return-void
.end method

.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 269
    instance-of v0, p1, Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 270
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "item":Ljava/lang/Object;
    instance-of v1, v0, Landroid/preference/Preference;

    if-nez v1, :cond_1

    return-void

    .line 275
    :cond_1
    move-object v1, v0

    check-cast v1, Landroid/preference/Preference;

    .line 276
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 277
    return-void
.end method

.method protected whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 300
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 307
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 308
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    .line 311
    :cond_1
    return-void

    .line 302
    .end local v0    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 303
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 286
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 287
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 288
    .local v1, "dialog":Landroid/app/Dialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    new-instance v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v2, v0}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 293
    .local v2, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 294
    invoke-virtual {v1}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 295
    return-object v2

    .line 289
    .end local v2    # "myState":Landroid/preference/PreferenceScreen$SavedState;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public blacklist semSetCategoryBGColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/preference/PreferenceScreen;->mIsChangedCategoryBG:Z

    .line 356
    iput p1, p0, Landroid/preference/PreferenceScreen;->mCategoryBGColor:I

    .line 357
    return-void
.end method
