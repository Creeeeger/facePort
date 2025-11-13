.class public Lcom/android/systemui/tuner/NavBarTuner;
.super Lcom/android/systemui/tuner/TunerPreferenceFragment;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ICONS:[[I


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public final mTunables:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v0, 0x7f080a9b

    const v1, 0x7f1313b4

    filled-new-array {v0, v1}, [I

    move-result-object v2

    const v0, 0x7f0807f6

    const v1, 0x7f1313bf

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const v0, 0x7f080ab4

    const v1, 0x7f1313bc

    filled-new-array {v0, v1}, [I

    move-result-object v4

    const v0, 0x7f08097b

    const v1, 0x7f1313b8

    filled-new-array {v0, v1}, [I

    move-result-object v5

    const v0, 0x7f080ab9

    const v1, 0x7f1313c0

    filled-new-array {v0, v1}, [I

    move-result-object v6

    const v0, 0x7f0809b1

    const v1, 0x7f1313bb

    filled-new-array {v0, v1}, [I

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [[I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    return-void
.end method

.method public static setValue(Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V
    .locals 1

    iget-object p1, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    const-string v0, "key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p3, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p2, 0x42

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p3, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, p3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p3

    const-string/jumbo v1, "type_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/preference/ListPreference;

    const-string v1, "keycode_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    const-string v1, "icon_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/preference/ListPreference;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/CharSequence;

    new-array v2, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x41600000    # 14.0f

    const/4 v5, 0x1

    invoke-static {v5, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    move v10, v4

    :goto_0
    if-ge v10, v0, :cond_0

    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    aget-object v14, v13, v10

    aget v14, v14, v4

    invoke-static {v12, v14}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const/high16 v14, -0x1000000

    invoke-virtual {v12, v14}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v12, v4, v4, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v14, Landroid/text/style/ImageSpan;

    invoke-direct {v14, v12, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v12, "  "

    invoke-virtual {v11, v12, v14, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aget-object v12, v13, v10

    aget v12, v12, v5

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aput-object v11, v1, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v13, v10

    aget v12, v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v9, v1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iput-object v2, v9, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    new-instance v10, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v8

    move-object/from16 v3, p2

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, v6, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v1, v10, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v10, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/Preference;Landroidx/preference/ListPreference;)V

    iput-object v10, v7, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    iput-object v10, v9, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    new-instance v10, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, v8

    move-object/from16 v3, p1

    move-object v4, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/Preference;Ljava/lang/String;Landroidx/preference/ListPreference;Landroidx/preference/ListPreference;)V

    iput-object v10, v8, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mHandler:Landroid/os/Handler;

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onCreatePreferences(Ljava/lang/String;)V
    .locals 4

    const p1, 0x7f170012

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "layout"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/NavBarTuner;Landroidx/preference/ListPreference;)V

    const-string/jumbo v1, "sysui_nav_bar"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    const-string p1, "left"

    const-string/jumbo v0, "sysui_nav_bar_left"

    const-string/jumbo v1, "space"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "right"

    const-string/jumbo v0, "sysui_nav_bar_right"

    const-string v1, "menu_ime"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/tuner/NavBarTuner;->bindButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/tuner/NavBarTuner;->mTunables:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final updateSummary(Landroidx/preference/ListPreference;)V
    .locals 7

    const-string v0, "/"

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v5, p1, Landroidx/preference/ListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v3, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v6, -0x1000000

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v3, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v3, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string v3, "  "

    invoke-virtual {v5, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    const-string v1, " "

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move v1, v4

    :goto_0
    sget-object v3, Lcom/android/systemui/tuner/NavBarTuner;->ICONS:[[I

    const/4 v6, 0x6

    if-ge v1, v6, :cond_1

    aget-object v3, v3, v1

    aget v6, v3, v4

    if-ne v6, v0, :cond_0

    aget v3, v3, v2

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "NavButton"

    const-string v1, "Problem with summary"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
