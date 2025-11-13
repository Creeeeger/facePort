.class public Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;
.super Ljava/lang/Object;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FirstInstallTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)I
    .locals 3

    const/4 v0, 0x0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-wide v1, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 246
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-wide p0, p0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p2, v1, p0

    if-gez p2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmp-long p0, p0, v1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 234
    check-cast p1, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    check-cast p2, Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/inputmethod/VirtualKeyboardFragment$FirstInstallTimeComparator;->compare(Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;Lcom/samsung/android/settings/inputmethod/SecInputMethodPreference;)I

    move-result p0

    return p0
.end method
