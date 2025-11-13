.class public final synthetic Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/exclusive/AccessibilityExclusiveUtil$$ExternalSyntheticLambda2;->f$1:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;

    invoke-interface {p1}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->getTaskName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/accessibility/exclusive/info/ExclusiveTaskInfo;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
