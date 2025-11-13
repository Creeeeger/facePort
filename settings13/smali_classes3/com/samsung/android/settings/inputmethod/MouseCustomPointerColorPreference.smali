.class public Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "MouseCustomPointerColorPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

.field private mContext:Landroid/content/Context;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static bridge synthetic -$$Nest$mgetPositionByColor(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->getPositionByColor(I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPointerColorList()[I
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->mouse_pointer_color_array:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method private getPositionByColor(I)I
    .locals 2

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->getPointerColorList()[I

    move-result-object p0

    const/4 v0, 0x0

    .line 148
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 149
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getAdapter()Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mAdapter:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->getPointerColorList()[I

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->sec_mouse_pointer_color_item:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;-><init>(Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;Landroid/content/Context;[II)V

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mAdapter:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mAdapter:Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 42
    sget p1, Lcom/android/settings/R$id;->mouse_pointer_color_recycler_view:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    new-instance v0, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/settings/inputmethod/SpanningLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 45
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference;->getAdapter()Lcom/samsung/android/settings/inputmethod/MouseCustomPointerColorPreference$MousePointerColorAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updatePreference()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
