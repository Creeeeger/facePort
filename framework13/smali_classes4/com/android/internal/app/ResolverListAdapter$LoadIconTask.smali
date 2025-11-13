.class Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mCheckViewHolder:Z

.field protected final blacklist mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

.field private blacklist mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

.field private final blacklist mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ResolverListAdapter;Lcom/android/internal/app/chooser/DisplayResolveInfo;Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p2, "dri"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p3, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 1189
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1190
    iput-object p2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 1191
    invoke-virtual {p2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 1192
    iput-object p3, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 1193
    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .line 1197
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1181
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 1202
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    if-ne v0, v1, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mResolverListCommunicator:Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;

    invoke-interface {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;->updateProfileViewButton()V

    goto :goto_1

    .line 1205
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->setDisplayIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1208
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mCheckViewHolder:Z

    if-eqz v0, :cond_4

    .line 1209
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "holderLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1211
    .local v1, "dispLabel":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v3, v0}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$mStringReplaceForSpace(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v2, v1}, Lcom/android/internal/app/ResolverListAdapter;->-$$Nest$mStringReplaceForSpace(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v1, v2

    .line 1213
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1214
    iget-object v2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1216
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mCheckViewHolder:Z

    .line 1217
    .end local v0    # "holderLabel":Ljava/lang/String;
    .end local v1    # "dispLabel":Ljava/lang/String;
    goto :goto_1

    .line 1218
    :cond_4
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1227
    :goto_1
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1181
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public blacklist semGetViewHolder()Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    .locals 1

    .line 1235
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    return-object v0
.end method

.method public blacklist semSetCheckViewHolder()V
    .locals 1

    .line 1239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mCheckViewHolder:Z

    .line 1240
    return-void
.end method

.method public blacklist setViewHolder(Lcom/android/internal/app/ResolverListAdapter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 1230
    iput-object p1, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mHolder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 1231
    iget-object v0, p0, Lcom/android/internal/app/ResolverListAdapter$LoadIconTask;->mDisplayResolveInfo:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->bindIcon(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 1232
    return-void
.end method
