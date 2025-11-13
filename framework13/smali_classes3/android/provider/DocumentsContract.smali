.class public final Landroid/provider/DocumentsContract;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/DocumentsContract$Path;,
        Landroid/provider/DocumentsContract$Root;,
        Landroid/provider/DocumentsContract$Document;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DOCUMENT_ROOT_SETTINGS:Ljava/lang/String; = "android.provider.action.DOCUMENT_ROOT_SETTINGS"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DOCUMENT_SETTINGS:Ljava/lang/String; = "android.provider.action.DOCUMENT_SETTINGS"

.field public static final whitelist ACTION_MANAGE_DOCUMENT:Ljava/lang/String; = "android.provider.action.MANAGE_DOCUMENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DOWNLOADS_PROVIDER_AUTHORITY:Ljava/lang/String; = "downloads"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTERNAL_STORAGE_PRIMARY_EMULATED_ROOT_ID:Ljava/lang/String; = "primary"

.field public static final whitelist EXTERNAL_STORAGE_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.android.externalstorage.documents"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final whitelist EXTRA_EXCLUDE_SELF:Ljava/lang/String; = "android.provider.extra.EXCLUDE_SELF"

.field public static final whitelist EXTRA_INFO:Ljava/lang/String; = "info"

.field public static final whitelist EXTRA_INITIAL_URI:Ljava/lang/String; = "android.provider.extra.INITIAL_URI"

.field public static final whitelist EXTRA_LOADING:Ljava/lang/String; = "loading"

.field public static final greylist-max-o EXTRA_OPTIONS:Ljava/lang/String; = "options"

.field public static final whitelist EXTRA_ORIENTATION:Ljava/lang/String; = "android.provider.extra.ORIENTATION"

.field public static final greylist-max-o EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_PARENT_URI:Ljava/lang/String; = "parentUri"

.field public static final whitelist EXTRA_PROMPT:Ljava/lang/String; = "android.provider.extra.PROMPT"

.field public static final greylist-max-o EXTRA_RESULT:Ljava/lang/String; = "result"

.field public static final whitelist EXTRA_SHOW_ADVANCED:Ljava/lang/String; = "android.provider.extra.SHOW_ADVANCED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_TARGET_URI:Ljava/lang/String; = "android.content.extra.TARGET_URI"

.field public static final greylist-max-o EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final blacklist EXTRA_URI_PERMISSIONS:Ljava/lang/String; = "uriPermissions"

.field public static final whitelist METADATA_EXIF:Ljava/lang/String; = "android:documentExif"

.field public static final whitelist METADATA_TREE_COUNT:Ljava/lang/String; = "android:metadataTreeCount"

.field public static final whitelist METADATA_TREE_SIZE:Ljava/lang/String; = "android:metadataTreeSize"

.field public static final whitelist METADATA_TYPES:Ljava/lang/String; = "android:documentMetadataTypes"

.field public static final greylist-max-o METHOD_COPY_DOCUMENT:Ljava/lang/String; = "android:copyDocument"

.field public static final greylist-max-r METHOD_CREATE_DOCUMENT:Ljava/lang/String; = "android:createDocument"

.field public static final greylist-max-o METHOD_CREATE_WEB_LINK_INTENT:Ljava/lang/String; = "android:createWebLinkIntent"

.field public static final greylist-max-o METHOD_DELETE_DOCUMENT:Ljava/lang/String; = "android:deleteDocument"

.field public static final greylist-max-o METHOD_EJECT_ROOT:Ljava/lang/String; = "android:ejectRoot"

.field public static final greylist-max-o METHOD_FIND_DOCUMENT_PATH:Ljava/lang/String; = "android:findDocumentPath"

.field public static final greylist-max-o METHOD_GET_DOCUMENT_METADATA:Ljava/lang/String; = "android:getDocumentMetadata"

.field public static final greylist-max-o METHOD_IS_CHILD_DOCUMENT:Ljava/lang/String; = "android:isChildDocument"

.field public static final greylist-max-o METHOD_MOVE_DOCUMENT:Ljava/lang/String; = "android:moveDocument"

.field public static final greylist-max-o METHOD_REMOVE_DOCUMENT:Ljava/lang/String; = "android:removeDocument"

.field public static final greylist-max-o METHOD_RENAME_DOCUMENT:Ljava/lang/String; = "android:renameDocument"

.field public static final greylist-max-o PACKAGE_DOCUMENTS_UI:Ljava/lang/String; = "com.android.documentsui"

.field private static final greylist-max-o PARAM_MANAGE:Ljava/lang/String; = "manage"

.field private static final greylist-max-o PARAM_QUERY:Ljava/lang/String; = "query"

.field private static final greylist-max-o PATH_CHILDREN:Ljava/lang/String; = "children"

.field private static final greylist-max-r PATH_DOCUMENT:Ljava/lang/String; = "document"

.field private static final greylist-max-o PATH_RECENT:Ljava/lang/String; = "recent"

.field private static final greylist-max-o PATH_ROOT:Ljava/lang/String; = "root"

.field private static final greylist-max-o PATH_SEARCH:Ljava/lang/String; = "search"

.field private static final greylist-max-r PATH_TREE:Ljava/lang/String; = "tree"

.field public static final whitelist PROVIDER_INTERFACE:Ljava/lang/String; = "android.content.action.DOCUMENTS_PROVIDER"

.field public static final whitelist QUERY_ARG_DISPLAY_NAME:Ljava/lang/String; = "android:query-arg-display-name"

.field public static final whitelist QUERY_ARG_EXCLUDE_MEDIA:Ljava/lang/String; = "android:query-arg-exclude-media"

.field public static final whitelist QUERY_ARG_FILE_SIZE_OVER:Ljava/lang/String; = "android:query-arg-file-size-over"

.field public static final whitelist QUERY_ARG_LAST_MODIFIED_AFTER:Ljava/lang/String; = "android:query-arg-last-modified-after"

.field public static final whitelist QUERY_ARG_MIME_TYPES:Ljava/lang/String; = "android:query-arg-mime-types"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DocumentsContract"


# direct methods
.method private constructor greylist-max-o <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method public static blacklist buildBaseDocumentUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "authority"    # Ljava/lang/String;

    .line 977
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getBaseDocumentUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildChildDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    .line 1036
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1037
    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "children"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1036
    return-object v0
.end method

.method public static whitelist buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "treeUri"    # Landroid/net/Uri;
    .param p1, "parentDocumentId"    # Ljava/lang/String;

    .line 1066
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1067
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tree"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1068
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1069
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "children"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1066
    return-object v0
.end method

.method public static whitelist buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    .line 958
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getBaseDocumentUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildDocumentUriAsUser(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 971
    nop

    .line 972
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 971
    invoke-static {v0, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "documentId"    # Ljava/lang/String;

    .line 1017
    invoke-static {p0}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1020
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "treeUri"    # Landroid/net/Uri;
    .param p1, "documentId"    # Ljava/lang/String;

    .line 1009
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1010
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "tree"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1011
    invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1012
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1009
    return-object v0
.end method

.method public static whitelist buildRecentDocumentsUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    .line 933
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 934
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 935
    const-string/jumbo v1, "recent"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 933
    return-object v0
.end method

.method public static whitelist buildRootUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;

    .line 920
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 921
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 920
    return-object v0
.end method

.method public static whitelist buildRootsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .line 909
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 910
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 909
    return-object v0
.end method

.method public static whitelist buildSearchDocumentsUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .line 1083
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1084
    const-string/jumbo v1, "root"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1085
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1083
    return-object v0
.end method

.method public static whitelist buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "documentId"    # Ljava/lang/String;

    .line 945
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 946
    const-string/jumbo v1, "tree"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 945
    return-object v0
.end method

.method public static whitelist copyDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "sourceDocumentUri"    # Landroid/net/Uri;
    .param p2, "targetParentDocumentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1496
    const-string/jumbo v0, "uri"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1497
    .local v2, "in":Landroid/os/Bundle;
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1498
    const-string v3, "android.content.extra.TARGET_URI"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1500
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:copyDocument"

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1502
    .local v3, "out":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1503
    .end local v2    # "in":Landroid/os/Bundle;
    .end local v3    # "out":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1504
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to copy document"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1505
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1506
    return-object v1
.end method

.method public static whitelist createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1380
    const-string/jumbo v0, "uri"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1381
    .local v2, "in":Landroid/os/Bundle;
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1382
    const-string/jumbo v3, "mime_type"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:createDocument"

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1387
    .local v3, "out":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1388
    .end local v2    # "in":Landroid/os/Bundle;
    .end local v3    # "out":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to create document"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1391
    return-object v1
.end method

.method public static whitelist createWebLinkIntent(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .locals 4
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1712
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1713
    .local v1, "in":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1717
    if-eqz p2, :cond_0

    .line 1718
    const-string/jumbo v2, "options"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1721
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:createWebLinkIntent"

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1723
    .local v2, "out":Landroid/os/Bundle;
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/IntentSender;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1724
    .end local v1    # "in":Landroid/os/Bundle;
    .end local v2    # "out":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1725
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to create a web link intent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    invoke-static {v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1727
    return-object v0
.end method

.method public static whitelist deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1471
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1472
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1474
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:deleteDocument"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    const/4 v1, 0x1

    return v1

    .line 1477
    .end local v0    # "in":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DocumentsContract"

    const-string v2, "Failed to delete document"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1480
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist ejectRoot(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "rootUri"    # Landroid/net/Uri;

    .line 1572
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1573
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1575
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:ejectRoot"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    nop

    .end local v0    # "in":Landroid/os/Bundle;
    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DocumentsContract"

    const-string v2, "Failed to eject"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1580
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static whitelist findDocumentPath(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/provider/DocumentsContract$Path;
    .locals 4
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "treeUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1645
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1646
    .local v1, "in":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1648
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:findDocumentPath"

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1650
    .local v2, "out":Landroid/os/Bundle;
    const-string/jumbo v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/provider/DocumentsContract$Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1651
    .end local v1    # "in":Landroid/os/Bundle;
    .end local v2    # "out":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1652
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to find path"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1653
    invoke-static {v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1654
    return-object v0
.end method

.method private static blacklist getBaseDocumentUriBuilder(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;

    .line 981
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 982
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "document"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 981
    return-object v0
.end method

.method public static whitelist getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6
    .param p0, "documentUri"    # Landroid/net/Uri;

    .line 1275
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1276
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "document"

    const/4 v4, 0x2

    if-lt v1, v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1277
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1279
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x4

    if-lt v1, v5, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tree"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1281
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1283
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getDocumentMetadata(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 4
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1614
    const-string v0, "content can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1615
    const-string v0, "documentUri can not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1617
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1618
    .local v1, "in":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1620
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:getDocumentMetadata"

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1622
    .end local v1    # "in":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 1623
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to get document metadata"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    invoke-static {v1}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1625
    return-object v0
.end method

.method public static whitelist getDocumentThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "size"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1357
    :try_start_0
    new-instance v0, Landroid/util/Size;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/content/ContentInterface;Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Landroid/os/OperationCanceledException;

    if-nez v1, :cond_0

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load thumbnail for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DocumentsContract"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1364
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getHandledQueryArguments(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 4
    .param p0, "queryArgs"    # Landroid/os/Bundle;

    .line 1149
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1150
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 1153
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android:query-arg-exclude-media"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android:query-arg-display-name"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1160
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1163
    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android:query-arg-file-size-over"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1164
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1167
    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android:query-arg-last-modified-after"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1168
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_4
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "android:query-arg-mime-types"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1172
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_5
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getRootId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "rootUri"    # Landroid/net/Uri;

    .line 1262
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1263
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "root"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1264
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1266
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "searchDocumentsUri"    # Landroid/net/Uri;

    .line 1302
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSearchDocumentsQuery(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 1311
    const-string v0, "bundle can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    const-string v0, "android:query-arg-display-name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0, "documentUri"    # Landroid/net/Uri;

    .line 1290
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1291
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "tree"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 1294
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist isChildDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "parentDocumentUri"    # Landroid/net/Uri;
    .param p2, "childDocumentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1407
    const-string/jumbo v0, "result"

    const-string v1, "content can not be null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string/jumbo v1, "parentDocumentUri can not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string v1, "childDocumentUri can not be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1412
    .local v1, "in":Landroid/os/Bundle;
    const-string/jumbo v2, "uri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1413
    const-string v2, "android.content.extra.TARGET_URI"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1415
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android:isChildDocument"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1417
    .local v2, "out":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1420
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1423
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 1421
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v3, "Response did not include result field.."

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "content":Landroid/content/ContentResolver;
    .end local p1    # "parentDocumentUri":Landroid/net/Uri;
    .end local p2    # "childDocumentUri":Landroid/net/Uri;
    throw v0

    .line 1418
    .restart local p0    # "content":Landroid/content/ContentResolver;
    .restart local p1    # "parentDocumentUri":Landroid/net/Uri;
    .restart local p2    # "childDocumentUri":Landroid/net/Uri;
    :cond_1
    new-instance v0, Landroid/os/RemoteException;

    const-string v3, "Failed to get a response from isChildDocument query."

    invoke-direct {v0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "content":Landroid/content/ContentResolver;
    .end local p1    # "parentDocumentUri":Landroid/net/Uri;
    .end local p2    # "childDocumentUri":Landroid/net/Uri;
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1424
    .end local v1    # "in":Landroid/os/Bundle;
    .end local v2    # "out":Landroid/os/Bundle;
    .restart local p0    # "content":Landroid/content/ContentResolver;
    .restart local p1    # "parentDocumentUri":Landroid/net/Uri;
    .restart local p2    # "childDocumentUri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1425
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DocumentsContract"

    const-string v2, "Failed to create document"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1426
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1427
    const/4 v1, 0x0

    return v1
.end method

.method public static greylist-max-o isContentUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1219
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1185
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1186
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1187
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "document"

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 1188
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1189
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    .line 1190
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v5, "tree"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1193
    .end local v0    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return v1
.end method

.method private static greylist-max-o isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "authority"    # Ljava/lang/String;

    .line 1242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.action.DOCUMENTS_PROVIDER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1243
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1244
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1246
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1247
    invoke-static {p1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1250
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1251
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1252
    const/4 v2, 0x1

    return v2

    .line 1254
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 1255
    :cond_2
    return v2
.end method

.method public static whitelist isManageMode(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1334
    const-string/jumbo v0, "uri can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    const-string/jumbo v0, "manage"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isRootUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1213
    const-string v0, "context can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroid/provider/DocumentsContract;->isRootUri(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method private static blacklist isRootUri(Landroid/content/Context;Landroid/net/Uri;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pathSize"    # I

    .line 1234
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isContentUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->isDocumentsProvider(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1236
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "root"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1238
    .end local v0    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return v1
.end method

.method public static whitelist isRootsUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1203
    const-string v0, "context can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/DocumentsContract;->isRootUri(Landroid/content/Context;Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public static whitelist isTreeUri(Landroid/net/Uri;)Z
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1229
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 1230
    .local v0, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v3, "tree"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static blacklist matchSearchQueryArguments(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 14
    .param p0, "queryArgs"    # Landroid/os/Bundle;
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "size"    # J

    .line 1100
    move-object v0, p0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1101
    return v1

    .line 1104
    :cond_0
    const-string v2, "android:query-arg-display-name"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1105
    .local v2, "argDisplayName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 1107
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1108
    return v4

    .line 1112
    :cond_1
    const-string v3, "android:query-arg-file-size-over"

    const-wide/16 v5, -0x1

    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1113
    .local v7, "argFileSize":J
    cmp-long v3, v7, v5

    if-eqz v3, :cond_2

    cmp-long v3, p5, v7

    if-gez v3, :cond_2

    .line 1114
    return v4

    .line 1117
    :cond_2
    const-string v3, "android:query-arg-last-modified-after"

    invoke-virtual {p0, v3, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1119
    .local v9, "argLastModified":J
    cmp-long v3, v9, v5

    if-eqz v3, :cond_3

    cmp-long v3, p3, v9

    if-gez v3, :cond_3

    .line 1120
    return v4

    .line 1123
    :cond_3
    const-string v3, "android:query-arg-mime-types"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1124
    .local v3, "argMimeTypes":[Ljava/lang/String;
    if-eqz v3, :cond_6

    array-length v5, v3

    if-lez v5, :cond_6

    .line 1125
    invoke-static/range {p2 .. p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1126
    .end local p2    # "mimeType":Ljava/lang/String;
    .local v5, "mimeType":Ljava/lang/String;
    array-length v6, v3

    move v11, v4

    :goto_0
    if-ge v11, v6, :cond_5

    aget-object v12, v3, v11

    .line 1127
    .local v12, "type":Ljava/lang/String;
    invoke-static {v12}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/content/MimeTypeFilter;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1128
    return v1

    .line 1126
    .end local v12    # "type":Ljava/lang/String;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1131
    :cond_5
    return v4

    .line 1133
    .end local v5    # "mimeType":Ljava/lang/String;
    .restart local p2    # "mimeType":Ljava/lang/String;
    :cond_6
    return v1
.end method

.method public static whitelist moveDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "sourceDocumentUri"    # Landroid/net/Uri;
    .param p2, "sourceParentDocumentUri"    # Landroid/net/Uri;
    .param p3, "targetParentDocumentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1523
    const-string/jumbo v0, "uri"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1524
    .local v2, "in":Landroid/os/Bundle;
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1525
    const-string/jumbo v3, "parentUri"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1526
    const-string v3, "android.content.extra.TARGET_URI"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1528
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:moveDocument"

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1530
    .local v3, "out":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1531
    .end local v2    # "in":Landroid/os/Bundle;
    .end local v3    # "out":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1532
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to move document"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1533
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1534
    return-object v1
.end method

.method public static greylist-max-o openImageThumbnail(Ljava/io/File;)Landroid/content/res/AssetFileDescriptor;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1739
    const/high16 v0, 0x10000000

    invoke-static {p0, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1742
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .line 1744
    .local v8, "exif":Landroid/media/ExifInterface;
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getThumbnailRange()[J

    move-result-object v1

    move-object v9, v1

    .line 1745
    .local v9, "thumb":[J
    if-eqz v9, :cond_0

    .line 1747
    const/4 v1, 0x0

    .line 1748
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "android.provider.extra.ORIENTATION"

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    move-object v10, v1

    goto :goto_0

    .line 1758
    :sswitch_0
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v1, v2

    .line 1759
    const/16 v2, 0x10e

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v10, v1

    goto :goto_0

    .line 1750
    :sswitch_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v1, v2

    .line 1751
    const/16 v2, 0x5a

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1752
    move-object v10, v1

    goto :goto_0

    .line 1754
    :sswitch_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    move-object v1, v2

    .line 1755
    const/16 v2, 0xb4

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1756
    move-object v10, v1

    .line 1763
    .end local v1    # "extras":Landroid/os/Bundle;
    .local v10, "extras":Landroid/os/Bundle;
    :goto_0
    new-instance v11, Landroid/content/res/AssetFileDescriptor;

    const/4 v1, 0x0

    aget-wide v5, v9, v1

    aget-wide v12, v9, v4

    move-object v1, v11

    move-object v2, v0

    move-wide v3, v5

    move-wide v5, v12

    move-object v7, v10

    invoke-direct/range {v1 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v11

    .line 1766
    .end local v8    # "exif":Landroid/media/ExifInterface;
    .end local v9    # "thumb":[J
    .end local v10    # "extras":Landroid/os/Bundle;
    :cond_0
    goto :goto_1

    .line 1765
    :catch_0
    move-exception v1

    .line 1769
    :goto_1
    new-instance v8, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJLandroid/os/Bundle;)V

    return-object v8

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static whitelist removeDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "parentDocumentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1551
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1552
    .local v0, "in":Landroid/os/Bundle;
    const-string/jumbo v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1553
    const-string/jumbo v1, "parentUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1555
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android:removeDocument"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1557
    const/4 v1, 0x1

    return v1

    .line 1558
    .end local v0    # "in":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DocumentsContract"

    const-string v2, "Failed to remove document"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1561
    const/4 v1, 0x0

    return v1
.end method

.method public static whitelist renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "content"    # Landroid/content/ContentResolver;
    .param p1, "documentUri"    # Landroid/net/Uri;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1447
    const-string/jumbo v0, "uri"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1448
    .local v2, "in":Landroid/os/Bundle;
    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1449
    const-string v3, "_display_name"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android:renameDocument"

    invoke-virtual {p0, v3, v4, v1, v2}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 1453
    .local v3, "out":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1454
    .local v0, "outUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    return-object v1

    .line 1455
    .end local v0    # "outUri":Landroid/net/Uri;
    .end local v2    # "in":Landroid/os/Bundle;
    .end local v3    # "out":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1456
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DocumentsContract"

    const-string v3, "Failed to rename document"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    invoke-static {v0}, Landroid/provider/DocumentsContract;->rethrowIfNecessary(Ljava/lang/Exception;)V

    .line 1458
    return-object v1
.end method

.method private static blacklist rethrowIfNecessary(Ljava/lang/Exception;)V
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1774
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 1775
    instance-of v0, p0, Landroid/os/ParcelableException;

    if-eqz v0, :cond_0

    .line 1776
    move-object v0, p0

    check-cast v0, Landroid/os/ParcelableException;

    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    goto :goto_0

    .line 1777
    :cond_0
    instance-of v0, p0, Landroid/os/RemoteException;

    if-eqz v0, :cond_1

    .line 1778
    move-object v0, p0

    check-cast v0, Landroid/os/RemoteException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 1779
    :cond_1
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    goto :goto_0

    .line 1780
    :cond_2
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 1783
    :cond_3
    :goto_0
    return-void
.end method

.method public static whitelist setManageMode(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1323
    const-string/jumbo v0, "uri can not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "manage"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
