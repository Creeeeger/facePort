.class public final Lcom/android/systemui/SystemUIInitializerImpl;
.super Lcom/android/systemui/SystemUIInitializer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUIInitializer;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getGlobalRootComponentBuilder()Lcom/android/systemui/dagger/GlobalRootComponent$Builder;
    .locals 0

    invoke-static {}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent;->builder()Lcom/android/systemui/dagger/ReferenceGlobalRootComponent$Builder;

    move-result-object p0

    return-object p0
.end method
