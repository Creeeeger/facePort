.class final enum Lcom/android/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mLabel:I

.field final mSwitch:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLabel(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const/4 v2, 0x0

    const v3, 0x7f142f9d

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(IILjava/lang/String;Z)V

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    new-instance v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const-string v3, "USER"

    const v5, 0x7f142f9f

    invoke-direct {v1, v4, v5, v3, v2}, Lcom/android/settings/TrustedCredentialsSettings$Tab;-><init>(IILjava/lang/String;Z)V

    sput-object v1, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    filled-new-array {v0, v1}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    sput-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p2, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I

    iput-boolean p4, p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->mSwitch:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    const-class v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/android/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
