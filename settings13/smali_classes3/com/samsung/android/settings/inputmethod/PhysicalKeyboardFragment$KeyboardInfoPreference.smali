.class final Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
.super Landroidx/preference/SecPreference;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyboardInfoPreference"
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field private final mAutoMataLanguage:Z

.field private final mImSubtypeName:Ljava/lang/CharSequence;

.field private final mImeName:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Z)V
    .locals 3

    .line 822
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 808
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->collator:Ljava/text/Collator;

    .line 823
    iget-object v0, p2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    .line 824
    iget-object v1, p2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v2, p2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    .line 825
    iput-boolean p3, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mAutoMataLanguage:Z

    .line 826
    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_0

    .line 828
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 829
    :cond_0
    iget-object p2, p2, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    if-eqz p2, :cond_1

    .line 830
    invoke-virtual {p2}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 832
    :cond_1
    sget p2, Lcom/android/settings/R$string;->ime_physical_empty_keyboard_language:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;ZLcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Z)V

    return-void
.end method

.method private compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1

    .line 880
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 882
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 884
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p2, :cond_0

    return-object p1

    .line 851
    :cond_0
    sget v0, Lcom/android/settings/R$string;->physical_device_title:I

    .line 852
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 851
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 1

    .line 840
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 841
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 842
    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p2, :cond_0

    .line 860
    invoke-static {p2, p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2

    .line 868
    instance-of v0, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    if-nez v0, :cond_0

    .line 869
    invoke-super {p0, p1}, Landroidx/preference/SecPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 871
    :cond_0
    check-cast p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    .line 872
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    iget-object p1, p1, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 801
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public final getSubTypeName()Ljava/lang/CharSequence;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final isAutoMataLanguage()Z
    .locals 0

    .line 817
    iget-boolean p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mAutoMataLanguage:Z

    return p0
.end method
