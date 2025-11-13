.class public Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference;
.super Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference;->ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final createAdapter(I)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;
    .locals 0

    new-instance p0, Lcom/samsung/android/settings/accessibility/base/widget/CustomDisplayPreference$CustomDisplayAdapter;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;-><init>(I)V

    return-object p0
.end method
