.class public final enum Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

.field public static final enum DARKER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

.field public static final enum LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

.field public static final enum NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const-string v1, "DARKER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->DARKER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    new-instance v1, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const-string v2, "LIGHTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->LIGHTER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    new-instance v2, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const-string v3, "NEARER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->NEARER:Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    new-instance v3, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    const-string v4, "FARTHER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    move-result-object v0

    sput-object v0, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->$VALUES:[Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;
    .locals 1

    const-class v0, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    return-object p0
.end method

.method public static values()[Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;
    .locals 1

    sget-object v0, Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->$VALUES:[Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    invoke-virtual {v0}, [Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ux/material/libmonet/dynamiccolor/TonePolarity;

    return-object v0
.end method
