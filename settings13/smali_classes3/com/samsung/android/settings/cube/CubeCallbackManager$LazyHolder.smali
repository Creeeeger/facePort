.class Lcom/samsung/android/settings/cube/CubeCallbackManager$LazyHolder;
.super Ljava/lang/Object;
.source "CubeCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/CubeCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/cube/CubeCallbackManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/cube/CubeCallbackManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/cube/CubeCallbackManager$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/cube/CubeCallbackManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/samsung/android/settings/cube/CubeCallbackManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/cube/CubeCallbackManager;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/cube/CubeCallbackManager$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/cube/CubeCallbackManager;

    return-void
.end method
