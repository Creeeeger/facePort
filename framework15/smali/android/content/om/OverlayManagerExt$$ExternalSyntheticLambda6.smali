.class public final synthetic Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda6;->f$0:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/om/OverlayManagerExt$$ExternalSyntheticLambda6;->f$0:Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;

    check-cast p1, Landroid/content/om/OverlayInfoExt;

    invoke-static {v0, p1}, Landroid/content/om/OverlayManagerExt;->lambda$removeOverlayPaths$5(Landroid/content/om/OverlayManagerExt$OverlayStateChangeRequest;Landroid/content/om/OverlayInfoExt;)Z

    move-result p1

    return p1
.end method
