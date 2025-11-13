.class final Landroidx/fragment/app/strictmode/FragmentStrictMode$handlePolicyViolation$1;
.super Ljava/lang/Object;
.source "FragmentStrictMode.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/strictmode/FragmentStrictMode;->handlePolicyViolation(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $policy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

.field final synthetic $violation:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method constructor <init>(Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;Landroidx/fragment/app/strictmode/Violation;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$handlePolicyViolation$1;->$policy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$handlePolicyViolation$1;->$violation:Landroidx/fragment/app/strictmode/Violation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 258
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$handlePolicyViolation$1;->$policy:Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;

    invoke-virtual {v0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;->getListener$fragment_release()Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$handlePolicyViolation$1;->$violation:Landroidx/fragment/app/strictmode/Violation;

    invoke-interface {v0, p0}, Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;->onViolation(Landroidx/fragment/app/strictmode/Violation;)V

    return-void
.end method
