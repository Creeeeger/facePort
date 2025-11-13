.class public final Landroidx/leanback/widget/SearchBar$5$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Landroidx/leanback/widget/SearchBar$5;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar$5;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$5$3;->this$1:Landroidx/leanback/widget/SearchBar$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$5$3;->this$1:Landroidx/leanback/widget/SearchBar$5;

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$5;->this$0:Landroidx/leanback/widget/SearchBar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method
