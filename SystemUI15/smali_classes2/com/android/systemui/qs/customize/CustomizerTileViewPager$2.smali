.class public final Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$2;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    sget v0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->distributeTiles$2()V

    return-void
.end method
