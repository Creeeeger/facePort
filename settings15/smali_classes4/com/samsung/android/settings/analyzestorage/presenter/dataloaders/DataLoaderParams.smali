.class public final Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final dataInfoList:Lkotlin/collections/EmptyList;

.field public forceUpdate:Z

.field public groupIndex:I

.field public loadExecutionId:I

.field public pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public sessionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->sessionId:I

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->loadExecutionId:I

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-void
.end method
