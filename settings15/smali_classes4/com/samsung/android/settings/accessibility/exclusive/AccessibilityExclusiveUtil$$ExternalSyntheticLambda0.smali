.class public final synthetic Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroid/content/ComponentName;

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_2
    check-cast p0, Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getControllerName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
