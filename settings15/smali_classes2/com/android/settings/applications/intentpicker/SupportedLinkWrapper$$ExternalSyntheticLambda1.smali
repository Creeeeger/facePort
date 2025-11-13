.class public final synthetic Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/applications/intentpicker/SupportedLinkWrapper$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Landroid/content/pm/verify/domain/DomainOwner;

    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainOwner;->isOverrideable()Z

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
