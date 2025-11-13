.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wmshell/WMShell;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
