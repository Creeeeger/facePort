.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    return-void
.end method


# virtual methods
.method public final onUserSwitched()V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$UserSwitcherViewMode;->setupUserSwitcher()V

    return-void
.end method
