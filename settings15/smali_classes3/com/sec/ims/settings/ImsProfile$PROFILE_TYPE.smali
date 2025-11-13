.class public final enum Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

.field public static final enum CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

.field public static final enum EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

.field public static final enum RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

.field public static final enum VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;


# direct methods
.method private static synthetic $values()[Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;
    .locals 4

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    sget-object v3, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    const-string v1, "EMERGENCY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->EMERGENCY:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    const-string v1, "VOLTE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    const-string v1, "RCS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    new-instance v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    const-string v1, "CHAT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->CHAT:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->$values()[Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->$VALUES:[Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;
    .locals 1

    const-class v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;
    .locals 1

    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->$VALUES:[Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-virtual {v0}, [Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    return-object v0
.end method
