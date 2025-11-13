.class Lcom/samsung/android/feature/SemCarrierFeature$SemCarrierFeatureHolder;
.super Ljava/lang/Object;
.source "SemCarrierFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/feature/SemCarrierFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemCarrierFeatureHolder"
.end annotation


# static fields
.field private static blacklist INSTANCE:Lcom/samsung/android/feature/SemCarrierFeature;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/samsung/android/feature/SemCarrierFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/feature/SemCarrierFeature$SemCarrierFeatureHolder;->INSTANCE:Lcom/samsung/android/feature/SemCarrierFeature;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateInstance()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature$SemCarrierFeatureHolder;->createInstance()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>(Lcom/samsung/android/feature/SemCarrierFeature-IA;)V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature$SemCarrierFeatureHolder;->INSTANCE:Lcom/samsung/android/feature/SemCarrierFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createInstance()V
    .locals 2

    new-instance v0, Lcom/samsung/android/feature/SemCarrierFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCarrierFeature;-><init>(Lcom/samsung/android/feature/SemCarrierFeature-IA;)V

    sput-object v0, Lcom/samsung/android/feature/SemCarrierFeature$SemCarrierFeatureHolder;->INSTANCE:Lcom/samsung/android/feature/SemCarrierFeature;

    return-void
.end method
