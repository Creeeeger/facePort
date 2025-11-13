.class public Lcom/android/systemui/tuner/RadioListPreference;
.super Lcom/android/systemui/tuner/CustomListPreference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mSummary:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    return-object p0

    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final onDialogCreated(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Landroid/app/Dialog;

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    const v1, 0x1030223

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v0, 0x10201c2

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02d1

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x101030b

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/android/systemui/tuner/RadioListPreference$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/systemui/tuner/RadioListPreference$$ExternalSyntheticLambda0;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    invoke-direct {v0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;-><init>()V

    iput-object p0, v0, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    iget-object p0, v0, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->update$3$1()V

    :cond_0
    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {p0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {p0, v1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p0}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x1020002

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-object p1
.end method

.method public final onDialogStateRestored(Landroid/app/Dialog;)V
    .locals 3

    const v0, 0x7f0a02d1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v1, p1}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/fragments/FragmentHostManager;->mFragments:Landroid/app/FragmentController;

    invoke-virtual {p1}, Landroid/app/FragmentController;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->mListPref:Lcom/android/systemui/tuner/RadioListPreference;

    iget-object p0, p1, Landroidx/preference/PreferenceFragment;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/tuner/RadioListPreference$RadioFragment;->update$3$1()V

    :cond_0
    return-void
.end method

.method public final onPrepareDialogBuilder(Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/android/systemui/tuner/RadioListPreference;->mSummary:Ljava/lang/CharSequence;

    return-void
.end method
