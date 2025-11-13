.class Lcom/samsung/android/feature/SemCscFeature$SemCscFeatureHolder;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/feature/SemCscFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemCscFeatureHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/samsung/android/feature/SemCscFeature;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/samsung/android/feature/SemCscFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/feature/SemCscFeature$SemCscFeatureHolder;->INSTANCE:Lcom/samsung/android/feature/SemCscFeature;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/feature/SemCscFeature;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;-><init>(Lcom/samsung/android/feature/SemCscFeature-IA;)V

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature$SemCscFeatureHolder;->INSTANCE:Lcom/samsung/android/feature/SemCscFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
