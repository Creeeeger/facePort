.class public enum Landroid/annotation/RestrictedFor$Environment;
.super Ljava/lang/Enum;
.source "RestrictedFor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/RestrictedFor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Landroid/annotation/RestrictedFor$Environment$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/annotation/RestrictedFor$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/annotation/RestrictedFor$Environment;

.field public static final enum blacklist SDK_SANDBOX:Landroid/annotation/RestrictedFor$Environment;


# direct methods
.method private static synthetic blacklist $values()[Landroid/annotation/RestrictedFor$Environment;
    .locals 1

    sget-object v0, Landroid/annotation/RestrictedFor$Environment;->SDK_SANDBOX:Landroid/annotation/RestrictedFor$Environment;

    filled-new-array {v0}, [Landroid/annotation/RestrictedFor$Environment;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Landroid/annotation/RestrictedFor$Environment$1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SDK_SANDBOX"

    invoke-direct {v0, v3, v1, v2}, Landroid/annotation/RestrictedFor$Environment$1;-><init>(Ljava/lang/String;ILandroid/annotation/RestrictedFor$Environment$1-IA;)V

    sput-object v0, Landroid/annotation/RestrictedFor$Environment;->SDK_SANDBOX:Landroid/annotation/RestrictedFor$Environment;

    invoke-static {}, Landroid/annotation/RestrictedFor$Environment;->$values()[Landroid/annotation/RestrictedFor$Environment;

    move-result-object v0

    sput-object v0, Landroid/annotation/RestrictedFor$Environment;->$VALUES:[Landroid/annotation/RestrictedFor$Environment;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/annotation/RestrictedFor$Environment-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/annotation/RestrictedFor$Environment;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/annotation/RestrictedFor$Environment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/annotation/RestrictedFor$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/RestrictedFor$Environment;

    return-object v0
.end method

.method public static blacklist values()[Landroid/annotation/RestrictedFor$Environment;
    .locals 1

    sget-object v0, Landroid/annotation/RestrictedFor$Environment;->$VALUES:[Landroid/annotation/RestrictedFor$Environment;

    invoke-virtual {v0}, [Landroid/annotation/RestrictedFor$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/RestrictedFor$Environment;

    return-object v0
.end method
