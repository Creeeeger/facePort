.class public final Landroid/view/accessibility/AccessibilityWindowAttributes;
.super Ljava/lang/Object;
.source "AccessibilityWindowAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocales:Landroid/os/LocaleList;

.field private final blacklist mWindowTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/accessibility/AccessibilityWindowAttributes$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowAttributes$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-class v1, Landroid/os/LocaleList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityWindowAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/WindowManager$LayoutParams;Landroid/os/LocaleList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowAttributes;->populateWindowTitle(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method private blacklist populateWindowTitle(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7f0

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v1, :cond_2

    if-eqz v2, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_2
    move-object v0, v3

    :cond_4
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/accessibility/AccessibilityWindowAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowAttributes;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public blacklist getWindowTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityWindowAttributes{mAccessibilityWindowTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mWindowTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowAttributes;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
