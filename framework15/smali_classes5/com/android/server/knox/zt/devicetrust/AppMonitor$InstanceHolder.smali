.class Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;
.super Ljava/lang/Object;
.source "AppMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/zt/devicetrust/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/server/knox/zt/devicetrust/AppMonitor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetINSTANCE()Lcom/android/server/knox/zt/devicetrust/AppMonitor;
    .locals 1

    sget-object v0, Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;-><init>(Lcom/android/server/knox/zt/devicetrust/AppMonitor-IA;)V

    sput-object v0, Lcom/android/server/knox/zt/devicetrust/AppMonitor$InstanceHolder;->INSTANCE:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
