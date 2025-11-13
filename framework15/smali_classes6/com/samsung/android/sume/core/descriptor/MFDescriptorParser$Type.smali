.class public final enum Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
.super Ljava/lang/Enum;
.source "MFDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

.field public static final enum blacklist JSON:Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->JSON:Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    filled-new-array {v0}, [Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    const-string v1, "JSON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->JSON:Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    invoke-static {}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->$values()[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->$VALUES:[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->$VALUES:[Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sume/core/descriptor/MFDescriptorParser$Type;

    return-object v0
.end method
