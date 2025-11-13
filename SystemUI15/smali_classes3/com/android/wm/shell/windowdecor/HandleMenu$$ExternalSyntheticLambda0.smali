.class public final synthetic Lcom/android/wm/shell/windowdecor/HandleMenu$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/HandleMenu;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/HandleMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/HandleMenu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/HandleMenu;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;->releaseView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenu;->mHandleMenuViewContainer:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewContainer;

    return-void
.end method
