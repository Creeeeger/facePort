.class Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;
.super Ljava/lang/Object;
.source "GtsResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/gts/GtsResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/samsung/android/settings/gts/GtsResources;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/samsung/android/settings/gts/GtsResources;

    invoke-direct {v0}, Lcom/samsung/android/settings/gts/GtsResources;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/gts/GtsResources$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/gts/GtsResources;

    return-void
.end method
