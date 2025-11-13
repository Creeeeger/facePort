.class final Landroid/inputmethodservice/SemImsRune;
.super Ljava/lang/Object;
.source "SemImsRune.java"


# static fields
.field static final blacklist disableRenderGesturalNavButtons:Z = true

.field static final blacklist enableCtsWorkaround:Z = true

.field static final blacklist supportPreferredMinDisplayRefreshRate:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "2"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/inputmethodservice/SemImsRune;->supportPreferredMinDisplayRefreshRate:Z

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
