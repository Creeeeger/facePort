.class final enum Landroid/annotation/RestrictedFor$Environment$1;
.super Landroid/annotation/RestrictedFor$Environment;
.source "RestrictedFor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/RestrictedFor$Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/annotation/RestrictedFor$Environment;-><init>(Ljava/lang/String;ILandroid/annotation/RestrictedFor$Environment-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/annotation/RestrictedFor$Environment$1-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/annotation/RestrictedFor$Environment$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SDK Runtime"

    return-object v0
.end method
