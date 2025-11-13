.class public Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncRemoteAdapterAction"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

.field private final greylist-max-o mIntent:Landroid/content/Intent;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V
    .locals 0
    .param p1, "callback"    # Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .line 170
    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;->mIntent:Landroid/content/Intent;

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 175
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;->mCallback:Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    .line 176
    return-void
.end method
