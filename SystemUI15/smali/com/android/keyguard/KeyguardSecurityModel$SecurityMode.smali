.class public final enum Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum ForgotPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Permanent:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public static final enum Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v1, "Invalid"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v2, "None"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v3, "Pattern"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v4, "Password"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v5, "PIN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v6, "SimPin"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v7, "SimPuk"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v8, "Permanent"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Permanent:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v9, "FMM"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v10, "RMM"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->RMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v11, "KNOXGUARD"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v11, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v12, "SKTCarrierLock"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v13, "SKTCarrierPassword"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v13, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v14, "SmartcardPIN"

    const/16 v15, 0xd

    invoke-direct {v13, v14, v15}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v15, "AdminLock"

    move-object/from16 v16, v13

    const/16 v13, 0xe

    invoke-direct {v14, v15, v13}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->AdminLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v13, "SimPerso"

    move-object/from16 v17, v14

    const/16 v14, 0xf

    invoke-direct {v15, v13, v14}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v13, "Swipe"

    move-object/from16 v18, v15

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v13, "ForgotPassword"

    move-object/from16 v19, v14

    const/16 v14, 0x11

    invoke-direct {v15, v13, v14}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ForgotPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v13, v16

    move-object/from16 v16, v19

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move-object/from16 v15, v18

    filled-new-array/range {v0 .. v17}, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public static values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->$VALUES:[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method
