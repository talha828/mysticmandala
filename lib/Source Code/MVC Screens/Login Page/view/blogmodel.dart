// JSON to Dart
// Paste your JSON in the textarea below, click convert and get your Dart classes for free.
//
// JSON
// }
//
//
//
// BlogModel
// Use private fields
// The Dart code generated is invalid
// class BlogModel {
//   int? id;
//   String? date;
//   String? dateGmt;
//   Guid? guid;
//   String? modified;
//   String? modifiedGmt;
//   String? slug;
//   String? status;
//   String? type;
//   String? link;
//   Guid? title;
//   Content? content;
//   Content? excerpt;
//   int? author;
//   int? featuredMedia;
//   String? commentStatus;
//   String? pingStatus;
//   bool? sticky;
//   String? template;
//   String? format;
//   List<Null>? meta;
//   List<int>? categories;
//   List<Null>? tags;
//   Links? lLinks;
//   Embedded? eEmbedded;
//
//   BlogModel({this.id, this.date, this.dateGmt, this.guid, this.modified, this.modifiedGmt, this.slug, this.status, this.type, this.link, this.title, this.content, this.excerpt, this.author, this.featuredMedia, this.commentStatus, this.pingStatus, this.sticky, this.template, this.format, this.meta, this.categories, this.tags, this.lLinks, this.eEmbedded});
//
//   BlogModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     dateGmt = json['date_gmt'];
//     guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
//     modified = json['modified'];
//     modifiedGmt = json['modified_gmt'];
//     slug = json['slug'];
//     status = json['status'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     content = json['content'] != null ? new Content.fromJson(json['content']) : null;
//     excerpt = json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
//     author = json['author'];
//     featuredMedia = json['featured_media'];
//     commentStatus = json['comment_status'];
//     pingStatus = json['ping_status'];
//     sticky = json['sticky'];
//     template = json['template'];
//     format = json['format'];
//     if (json['meta'] != null) {
//       meta = <Null>[];
//       json['meta'].forEach((v) { meta!.add(new Null.fromJson(v)); });
//     }
//     categories = json['categories'].cast<int>();
//     if (json['tags'] != null) {
//       tags = <Null>[];
//       json['tags'].forEach((v) { tags!.add(new Null.fromJson(v)); });
//     }
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//     eEmbedded = json['_embedded'] != null ? new Embedded.fromJson(json['_embedded']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['date_gmt'] = this.dateGmt;
//     if (this.guid != null) {
//       data['guid'] = this.guid!.toJson();
//     }
//     data['modified'] = this.modified;
//     data['modified_gmt'] = this.modifiedGmt;
//     data['slug'] = this.slug;
//     data['status'] = this.status;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     if (this.content != null) {
//       data['content'] = this.content!.toJson();
//     }
//     if (this.excerpt != null) {
//       data['excerpt'] = this.excerpt!.toJson();
//     }
//     data['author'] = this.author;
//     data['featured_media'] = this.featuredMedia;
//     data['comment_status'] = this.commentStatus;
//     data['ping_status'] = this.pingStatus;
//     data['sticky'] = this.sticky;
//     data['template'] = this.template;
//     data['format'] = this.format;
//     if (this.meta != null) {
//       data['meta'] = this.meta!.map((v) => v.toJson()).toList();
//     }
//     data['categories'] = this.categories;
//     if (this.tags != null) {
//       data['tags'] = this.tags!.map((v) => v.toJson()).toList();
//     }
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     if (this.eEmbedded != null) {
//       data['_embedded'] = this.eEmbedded!.toJson();
//     }
//     return data;
//   }
// }
//
// class Guid {
//   String? rendered;
//
//   Guid({this.rendered});
//
//   Guid.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rendered'] = this.rendered;
//     return data;
//   }
// }
//
// class Content {
//   String? rendered;
//   bool? protected;
//
//   Content({this.rendered, this.protected});
//
//   Content.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//     protected = json['protected'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rendered'] = this.rendered;
//     data['protected'] = this.protected;
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//   List<About>? about;
//   List<Author>? author;
//   List<Replies>? replies;
//   List<VersionHistory>? versionHistory;
//   List<PredecessorVersion>? predecessorVersion;
//   List<WpFeaturedmedia>? wpFeaturedmedia;
//   List<WpAttachment>? wpAttachment;
//   List<WpTerm>? wpTerm;
//   List<Curies>? curies;
//
//   Links({this.self, this.collection, this.about, this.author, this.replies, this.versionHistory, this.predecessorVersion, this.wpFeaturedmedia, this.wpAttachment, this.wpTerm, this.curies});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) { self!.add(new Self.fromJson(v)); });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) { collection!.add(new Collection.fromJson(v)); });
//     }
//     if (json['about'] != null) {
//       about = <About>[];
//       json['about'].forEach((v) { about!.add(new About.fromJson(v)); });
//     }
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) { author!.add(new Author.fromJson(v)); });
//     }
//     if (json['replies'] != null) {
//       replies = <Replies>[];
//       json['replies'].forEach((v) { replies!.add(new Replies.fromJson(v)); });
//     }
//     if (json['version-history'] != null) {
//       versionHistory = <VersionHistory>[];
//       json['version-history'].forEach((v) { versionHistory!.add(new VersionHistory.fromJson(v)); });
//     }
//     if (json['predecessor-version'] != null) {
//       predecessorVersion = <PredecessorVersion>[];
//       json['predecessor-version'].forEach((v) { predecessorVersion!.add(new PredecessorVersion.fromJson(v)); });
//     }
//     if (json['wp:featuredmedia'] != null) {
//       wpFeaturedmedia = <WpFeaturedmedia>[];
//       json['wp:featuredmedia'].forEach((v) { wpFeaturedmedia!.add(new WpFeaturedmedia.fromJson(v)); });
//     }
//     if (json['wp:attachment'] != null) {
//       wpAttachment = <WpAttachment>[];
//       json['wp:attachment'].forEach((v) { wpAttachment!.add(new WpAttachment.fromJson(v)); });
//     }
//     if (json['wp:term'] != null) {
//       wpTerm = <WpTerm>[];
//       json['wp:term'].forEach((v) { wpTerm!.add(new WpTerm.fromJson(v)); });
//     }
//     if (json['curies'] != null) {
//       curies = <Curies>[];
//       json['curies'].forEach((v) { curies!.add(new Curies.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     if (this.collection != null) {
//       data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     }
//     if (this.about != null) {
//       data['about'] = this.about!.map((v) => v.toJson()).toList();
//     }
//     if (this.author != null) {
//       data['author'] = this.author!.map((v) => v.toJson()).toList();
//     }
//     if (this.replies != null) {
//       data['replies'] = this.replies!.map((v) => v.toJson()).toList();
//     }
//     if (this.versionHistory != null) {
//       data['version-history'] = this.versionHistory!.map((v) => v.toJson()).toList();
//     }
//     if (this.predecessorVersion != null) {
//       data['predecessor-version'] = this.predecessorVersion!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpFeaturedmedia != null) {
//       data['wp:featuredmedia'] = this.wpFeaturedmedia!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpAttachment != null) {
//       data['wp:attachment'] = this.wpAttachment!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpTerm != null) {
//       data['wp:term'] = this.wpTerm!.map((v) => v.toJson()).toList();
//     }
//     if (this.curies != null) {
//       data['curies'] = this.curies!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Self {
//   String? href;
//
//   Self({this.href});
//
//   Self.fromJson(Map<String, dynamic> json) {
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class Author {
//   bool? embeddable;
//   String? href;
//
//   Author({this.embeddable, this.href});
//
//   Author.fromJson(Map<String, dynamic> json) {
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['embeddable'] = this.embeddable;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class VersionHistory {
//   int? count;
//   String? href;
//
//   VersionHistory({this.count, this.href});
//
//   VersionHistory.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['count'] = this.count;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class PredecessorVersion {
//   int? id;
//   String? href;
//
//   PredecessorVersion({this.id, this.href});
//
//   PredecessorVersion.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class WpTerm {
//   String? taxonomy;
//   bool? embeddable;
//   String? href;
//
//   WpTerm({this.taxonomy, this.embeddable, this.href});
//
//   WpTerm.fromJson(Map<String, dynamic> json) {
//     taxonomy = json['taxonomy'];
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['taxonomy'] = this.taxonomy;
//     data['embeddable'] = this.embeddable;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class Curies {
//   String? name;
//   String? href;
//   bool? templated;
//
//   Curies({this.name, this.href, this.templated});
//
//   Curies.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     href = json['href'];
//     templated = json['templated'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['href'] = this.href;
//     data['templated'] = this.templated;
//     return data;
//   }
// }
//
// class Embedded {
//   List<Author>? author;
//   List<WpFeaturedmedia>? wpFeaturedmedia;
//   List<List>? wpTerm;
//
//   Embedded({this.author, this.wpFeaturedmedia, this.wpTerm});
//
//   Embedded.fromJson(Map<String, dynamic> json) {
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) { author!.add(new Author.fromJson(v)); });
//     }
//     if (json['wp:featuredmedia'] != null) {
//       wpFeaturedmedia = <WpFeaturedmedia>[];
//       json['wp:featuredmedia'].forEach((v) { wpFeaturedmedia!.add(new WpFeaturedmedia.fromJson(v)); });
//     }
//     if (json['wp:term'] != null) {
//       wpTerm = <List>[];
//       json['wp:term'].forEach((v) { wpTerm!.add(new List.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.author != null) {
//       data['author'] = this.author!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpFeaturedmedia != null) {
//       data['wp:featuredmedia'] = this.wpFeaturedmedia!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpTerm != null) {
//       data['wp:term'] = this.wpTerm!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Author {
//   int? id;
//   String? name;
//   String? url;
//   String? description;
//   String? link;
//   String? slug;
//   AvatarUrls? avatarUrls;
//   bool? isSuperAdmin;
//   WoocommerceMeta? woocommerceMeta;
//   Links? lLinks;
//
//   Author({this.id, this.name, this.url, this.description, this.link, this.slug, this.avatarUrls, this.isSuperAdmin, this.woocommerceMeta, this.lLinks});
//
//   Author.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     url = json['url'];
//     description = json['description'];
//     link = json['link'];
//     slug = json['slug'];
//     avatarUrls = json['avatar_urls'] != null ? new AvatarUrls.fromJson(json['avatar_urls']) : null;
//     isSuperAdmin = json['is_super_admin'];
//     woocommerceMeta = json['woocommerce_meta'] != null ? new WoocommerceMeta.fromJson(json['woocommerce_meta']) : null;
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['url'] = this.url;
//     data['description'] = this.description;
//     data['link'] = this.link;
//     data['slug'] = this.slug;
//     if (this.avatarUrls != null) {
//       data['avatar_urls'] = this.avatarUrls!.toJson();
//     }
//     data['is_super_admin'] = this.isSuperAdmin;
//     if (this.woocommerceMeta != null) {
//       data['woocommerce_meta'] = this.woocommerceMeta!.toJson();
//     }
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class AvatarUrls {
//   String? s24;
//   String? s48;
//   String? s96;
//
//   AvatarUrls({this.s24, this.s48, this.s96});
//
//   AvatarUrls.fromJson(Map<String, dynamic> json) {
//     s24 = json['24'];
//     s48 = json['48'];
//     s96 = json['96'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['24'] = this.s24;
//     data['48'] = this.s48;
//     data['96'] = this.s96;
//     return data;
//   }
// }
//
// class WoocommerceMeta {
//   String? activityPanelInboxLastRead;
//   String? activityPanelReviewsLastRead;
//   String? categoriesReportColumns;
//   String? couponsReportColumns;
//   String? customersReportColumns;
//   String? ordersReportColumns;
//   String? productsReportColumns;
//   String? revenueReportColumns;
//   String? taxesReportColumns;
//   String? variationsReportColumns;
//   String? dashboardSections;
//   String? dashboardChartType;
//   String? dashboardChartInterval;
//   String? dashboardLeaderboardRows;
//   String? homepageLayout;
//   String? homepageStats;
//   String? taskListTrackedStartedTasks;
//   String? helpPanelHighlightShown;
//   String? androidAppBannerDismissed;
//
//   WoocommerceMeta({this.activityPanelInboxLastRead, this.activityPanelReviewsLastRead, this.categoriesReportColumns, this.couponsReportColumns, this.customersReportColumns, this.ordersReportColumns, this.productsReportColumns, this.revenueReportColumns, this.taxesReportColumns, this.variationsReportColumns, this.dashboardSections, this.dashboardChartType, this.dashboardChartInterval, this.dashboardLeaderboardRows, this.homepageLayout, this.homepageStats, this.taskListTrackedStartedTasks, this.helpPanelHighlightShown, this.androidAppBannerDismissed});
//
//   WoocommerceMeta.fromJson(Map<String, dynamic> json) {
//     activityPanelInboxLastRead = json['activity_panel_inbox_last_read'];
//     activityPanelReviewsLastRead = json['activity_panel_reviews_last_read'];
//     categoriesReportColumns = json['categories_report_columns'];
//     couponsReportColumns = json['coupons_report_columns'];
//     customersReportColumns = json['customers_report_columns'];
//     ordersReportColumns = json['orders_report_columns'];
//     productsReportColumns = json['products_report_columns'];
//     revenueReportColumns = json['revenue_report_columns'];
//     taxesReportColumns = json['taxes_report_columns'];
//     variationsReportColumns = json['variations_report_columns'];
//     dashboardSections = json['dashboard_sections'];
//     dashboardChartType = json['dashboard_chart_type'];
//     dashboardChartInterval = json['dashboard_chart_interval'];
//     dashboardLeaderboardRows = json['dashboard_leaderboard_rows'];
//     homepageLayout = json['homepage_layout'];
//     homepageStats = json['homepage_stats'];
//     taskListTrackedStartedTasks = json['task_list_tracked_started_tasks'];
//     helpPanelHighlightShown = json['help_panel_highlight_shown'];
//     androidAppBannerDismissed = json['android_app_banner_dismissed'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['activity_panel_inbox_last_read'] = this.activityPanelInboxLastRead;
//     data['activity_panel_reviews_last_read'] = this.activityPanelReviewsLastRead;
//     data['categories_report_columns'] = this.categoriesReportColumns;
//     data['coupons_report_columns'] = this.couponsReportColumns;
//     data['customers_report_columns'] = this.customersReportColumns;
//     data['orders_report_columns'] = this.ordersReportColumns;
//     data['products_report_columns'] = this.productsReportColumns;
//     data['revenue_report_columns'] = this.revenueReportColumns;
//     data['taxes_report_columns'] = this.taxesReportColumns;
//     data['variations_report_columns'] = this.variationsReportColumns;
//     data['dashboard_sections'] = this.dashboardSections;
//     data['dashboard_chart_type'] = this.dashboardChartType;
//     data['dashboard_chart_interval'] = this.dashboardChartInterval;
//     data['dashboard_leaderboard_rows'] = this.dashboardLeaderboardRows;
//     data['homepage_layout'] = this.homepageLayout;
//     data['homepage_stats'] = this.homepageStats;
//     data['task_list_tracked_started_tasks'] = this.taskListTrackedStartedTasks;
//     data['help_panel_highlight_shown'] = this.helpPanelHighlightShown;
//     data['android_app_banner_dismissed'] = this.androidAppBannerDismissed;
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//
//   Links({this.self, this.collection});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) { self!.add(new Self.fromJson(v)); });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) { collection!.add(new Collection.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     if (this.collection != null) {
//       data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class WpFeaturedmedia {
//   int? id;
//   String? date;
//   String? slug;
//   String? type;
//   String? link;
//   Guid? title;
//   int? author;
//   Guid? caption;
//   String? altText;
//   String? mediaType;
//   String? mimeType;
//   MediaDetails? mediaDetails;
//   String? sourceUrl;
//   Links? lLinks;
//
//   WpFeaturedmedia({this.id, this.date, this.slug, this.type, this.link, this.title, this.author, this.caption, this.altText, this.mediaType, this.mimeType, this.mediaDetails, this.sourceUrl, this.lLinks});
//
//   WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     slug = json['slug'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     author = json['author'];
//     caption = json['caption'] != null ? new Guid.fromJson(json['caption']) : null;
//     altText = json['alt_text'];
//     mediaType = json['media_type'];
//     mimeType = json['mime_type'];
//     mediaDetails = json['media_details'] != null ? new MediaDetails.fromJson(json['media_details']) : null;
//     sourceUrl = json['source_url'];
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['slug'] = this.slug;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     data['author'] = this.author;
//     if (this.caption != null) {
//       data['caption'] = this.caption!.toJson();
//     }
//     data['alt_text'] = this.altText;
//     data['media_type'] = this.mediaType;
//     data['mime_type'] = this.mimeType;
//     if (this.mediaDetails != null) {
//       data['media_details'] = this.mediaDetails!.toJson();
//     }
//     data['source_url'] = this.sourceUrl;
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class MediaDetails {
//   int? width;
//   int? height;
//   String? file;
//   int? filesize;
//   Sizes? sizes;
//   ImageMeta? imageMeta;
//
//   MediaDetails({this.width, this.height, this.file, this.filesize, this.sizes, this.imageMeta});
//
//   MediaDetails.fromJson(Map<String, dynamic> json) {
//     width = json['width'];
//     height = json['height'];
//     file = json['file'];
//     filesize = json['filesize'];
//     sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
//     imageMeta = json['image_meta'] != null ? new ImageMeta.fromJson(json['image_meta']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['file'] = this.file;
//     data['filesize'] = this.filesize;
//     if (this.sizes != null) {
//       data['sizes'] = this.sizes!.toJson();
//     }
//     if (this.imageMeta != null) {
//       data['image_meta'] = this.imageMeta!.toJson();
//     }
//     return data;
//   }
// }
//
// class Sizes {
//   WoocommerceThumbnail? woocommerceThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceGalleryThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceSingle;
//   WoocommerceGalleryThumbnail? medium;
//   WoocommerceGalleryThumbnail? large;
//   WoocommerceGalleryThumbnail? thumbnail;
//   WoocommerceGalleryThumbnail? mediumLarge;
//   Full? full;
//
//   Sizes({this.woocommerceThumbnail, this.woocommerceGalleryThumbnail, this.woocommerceSingle, this.medium, this.large, this.thumbnail, this.mediumLarge, this.full});
//
//   Sizes.fromJson(Map<String, dynamic> json) {
//     woocommerceThumbnail = json['woocommerce_thumbnail'] != null ? new WoocommerceThumbnail.fromJson(json['woocommerce_thumbnail']) : null;
//     woocommerceGalleryThumbnail = json['woocommerce_gallery_thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_gallery_thumbnail']) : null;
//     woocommerceSingle = json['woocommerce_single'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_single']) : null;
//     medium = json['medium'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium']) : null;
//     large = json['large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['large']) : null;
//     thumbnail = json['thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['thumbnail']) : null;
//     mediumLarge = json['medium_large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium_large']) : null;
//     full = json['full'] != null ? new Full.fromJson(json['full']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.woocommerceThumbnail != null) {
//       data['woocommerce_thumbnail'] = this.woocommerceThumbnail!.toJson();
//     }
//     if (this.woocommerceGalleryThumbnail != null) {
//       data['woocommerce_gallery_thumbnail'] = this.woocommerceGalleryThumbnail!.toJson();
//     }
//     if (this.woocommerceSingle != null) {
//       data['woocommerce_single'] = this.woocommerceSingle!.toJson();
//     }
//     if (this.medium != null) {
//       data['medium'] = this.medium!.toJson();
//     }
//     if (this.large != null) {
//       data['large'] = this.large!.toJson();
//     }
//     if (this.thumbnail != null) {
//       data['thumbnail'] = this.thumbnail!.toJson();
//     }
//     if (this.mediumLarge != null) {
//       data['medium_large'] = this.mediumLarge!.toJson();
//     }
//     if (this.full != null) {
//       data['full'] = this.full!.toJson();
//     }
//     return data;
//   }
// }
//
// class WoocommerceThumbnail {
//   String? file;
//   int? width;
//   int? height;
//   int? filesize;
//   bool? uncropped;
//   String? mimeType;
//   String? sourceUrl;
//
//   WoocommerceThumbnail({this.file, this.width, this.height, this.filesize, this.uncropped, this.mimeType, this.sourceUrl});
//
//   WoocommerceThumbnail.fromJson(Map<String, dynamic> json) {
//     file = json['file'];
//     width = json['width'];
//     height = json['height'];
//     filesize = json['filesize'];
//     uncropped = json['uncropped'];
//     mimeType = json['mime_type'];
//     sourceUrl = json['source_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file'] = this.file;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['filesize'] = this.filesize;
//     data['uncropped'] = this.uncropped;
//     data['mime_type'] = this.mimeType;
//     data['source_url'] = this.sourceUrl;
//     return data;
//   }
// }
//
// class WoocommerceGalleryThumbnail {
//   String? file;
//   int? width;
//   int? height;
//   int? filesize;
//   String? mimeType;
//   String? sourceUrl;
//
//   WoocommerceGalleryThumbnail({this.file, this.width, this.height, this.filesize, this.mimeType, this.sourceUrl});
//
//   WoocommerceGalleryThumbnail.fromJson(Map<String, dynamic> json) {
//     file = json['file'];
//     width = json['width'];
//     height = json['height'];
//     filesize = json['filesize'];
//     mimeType = json['mime_type'];
//     sourceUrl = json['source_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file'] = this.file;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['filesize'] = this.filesize;
//     data['mime_type'] = this.mimeType;
//     data['source_url'] = this.sourceUrl;
//     return data;
//   }
// }
//
// class Full {
//   String? file;
//   int? width;
//   int? height;
//   String? mimeType;
//   String? sourceUrl;
//
//   Full({this.file, this.width, this.height, this.mimeType, this.sourceUrl});
//
//   Full.fromJson(Map<String, dynamic> json) {
//     file = json['file'];
//     width = json['width'];
//     height = json['height'];
//     mimeType = json['mime_type'];
//     sourceUrl = json['source_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file'] = this.file;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['mime_type'] = this.mimeType;
//     data['source_url'] = this.sourceUrl;
//     return data;
//   }
// }
//
// class ImageMeta {
//   String? aperture;
//   String? credit;
//   String? camera;
//   String? caption;
//   String? createdTimestamp;
//   String? copyright;
//   String? focalLength;
//   String? iso;
//   String? shutterSpeed;
//   String? title;
//   String? orientation;
//   List<Null>? keywords;
//
//   ImageMeta({this.aperture, this.credit, this.camera, this.caption, this.createdTimestamp, this.copyright, this.focalLength, this.iso, this.shutterSpeed, this.title, this.orientation, this.keywords});
//
//   ImageMeta.fromJson(Map<String, dynamic> json) {
//     aperture = json['aperture'];
//     credit = json['credit'];
//     camera = json['camera'];
//     caption = json['caption'];
//     createdTimestamp = json['created_timestamp'];
//     copyright = json['copyright'];
//     focalLength = json['focal_length'];
//     iso = json['iso'];
//     shutterSpeed = json['shutter_speed'];
//     title = json['title'];
//     orientation = json['orientation'];
//     if (json['keywords'] != null) {
//       keywords = <Null>[];
//       json['keywords'].forEach((v) { keywords!.add(new Null.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['aperture'] = this.aperture;
//     data['credit'] = this.credit;
//     data['camera'] = this.camera;
//     data['caption'] = this.caption;
//     data['created_timestamp'] = this.createdTimestamp;
//     data['copyright'] = this.copyright;
//     data['focal_length'] = this.focalLength;
//     data['iso'] = this.iso;
//     data['shutter_speed'] = this.shutterSpeed;
//     data['title'] = this.title;
//     data['orientation'] = this.orientation;
//     if (this.keywords != null) {
//       data['keywords'] = this.keywords!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//   List<About>? about;
//   List<Author>? author;
//   List<Replies>? replies;
//
//   Links({this.self, this.collection, this.about, this.author, this.replies});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) { self!.add(new Self.fromJson(v)); });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) { collection!.add(new Collection.fromJson(v)); });
//     }
//     if (json['about'] != null) {
//       about = <About>[];
//       json['about'].forEach((v) { about!.add(new About.fromJson(v)); });
//     }
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) { author!.add(new Author.fromJson(v)); });
//     }
//     if (json['replies'] != null) {
//       replies = <Replies>[];
//       json['replies'].forEach((v) { replies!.add(new Replies.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     if (this.collection != null) {
//       data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     }
//     if (this.about != null) {
//       data['about'] = this.about!.map((v) => v.toJson()).toList();
//     }
//     if (this.author != null) {
//       data['author'] = this.author!.map((v) => v.toJson()).toList();
//     }
//     if (this.replies != null) {
//       data['replies'] = this.replies!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class WpTerm {
//
//
//   WpTerm({});
//
// WpTerm.fromJson(Map<String, dynamic> json) {
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   return data;
// }
// }
//
// class BlogModel {
//   int? id;
//   String? date;
//   String? dateGmt;
//   Guid? guid;
//   String? modified;
//   String? modifiedGmt;
//   String? slug;
//   String? status;
//   String? type;
//   String? link;
//   Guid? title;
//   Content? content;
//   Content? excerpt;
//   int? author;
//   int? featuredMedia;
//   String? commentStatus;
//   String? pingStatus;
//   bool? sticky;
//   String? template;
//   String? format;
//   List<Null>? meta;
//   List<int>? categories;
//   List<Null>? tags;
//   Links? lLinks;
//   Embedded? eEmbedded;
//
//   BlogModel({this.id, this.date, this.dateGmt, this.guid, this.modified, this.modifiedGmt, this.slug, this.status, this.type, this.link, this.title, this.content, this.excerpt, this.author, this.featuredMedia, this.commentStatus, this.pingStatus, this.sticky, this.template, this.format, this.meta, this.categories, this.tags, this.lLinks, this.eEmbedded});
//
//   BlogModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     dateGmt = json['date_gmt'];
//     guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
//     modified = json['modified'];
//     modifiedGmt = json['modified_gmt'];
//     slug = json['slug'];
//     status = json['status'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     content = json['content'] != null ? new Content.fromJson(json['content']) : null;
//     excerpt = json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
//     author = json['author'];
//     featuredMedia = json['featured_media'];
//     commentStatus = json['comment_status'];
//     pingStatus = json['ping_status'];
//     sticky = json['sticky'];
//     template = json['template'];
//     format = json['format'];
//     if (json['meta'] != null) {
//       meta = <Null>[];
//       json['meta'].forEach((v) { meta!.add(new Null.fromJson(v)); });
//     }
//     categories = json['categories'].cast<int>();
//     if (json['tags'] != null) {
//       tags = <Null>[];
//       json['tags'].forEach((v) { tags!.add(new Null.fromJson(v)); });
//     }
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//     eEmbedded = json['_embedded'] != null ? new Embedded.fromJson(json['_embedded']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['date_gmt'] = this.dateGmt;
//     if (this.guid != null) {
//       data['guid'] = this.guid!.toJson();
//     }
//     data['modified'] = this.modified;
//     data['modified_gmt'] = this.modifiedGmt;
//     data['slug'] = this.slug;
//     data['status'] = this.status;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     if (this.content != null) {
//       data['content'] = this.content!.toJson();
//     }
//     if (this.excerpt != null) {
//       data['excerpt'] = this.excerpt!.toJson();
//     }
//     data['author'] = this.author;
//     data['featured_media'] = this.featuredMedia;
//     data['comment_status'] = this.commentStatus;
//     data['ping_status'] = this.pingStatus;
//     data['sticky'] = this.sticky;
//     data['template'] = this.template;
//     data['format'] = this.format;
//     if (this.meta != null) {
//       data['meta'] = this.meta!.map((v) => v.toJson()).toList();
//     }
//     data['categories'] = this.categories;
//     if (this.tags != null) {
//       data['tags'] = this.tags!.map((v) => v.toJson()).toList();
//     }
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     if (this.eEmbedded != null) {
//       data['_embedded'] = this.eEmbedded!.toJson();
//     }
//     return data;
//   }
// }
//
// class WpFeaturedmedia {
//   int? id;
//   String? date;
//   String? slug;
//   String? type;
//   String? link;
//   Guid? title;
//   int? author;
//   Guid? caption;
//   String? altText;
//   String? mediaType;
//   String? mimeType;
//   MediaDetails? mediaDetails;
//   String? sourceUrl;
//   Links? lLinks;
//
//   WpFeaturedmedia({this.id, this.date, this.slug, this.type, this.link, this.title, this.author, this.caption, this.altText, this.mediaType, this.mimeType, this.mediaDetails, this.sourceUrl, this.lLinks});
//
//   WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     slug = json['slug'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     author = json['author'];
//     caption = json['caption'] != null ? new Guid.fromJson(json['caption']) : null;
//     altText = json['alt_text'];
//     mediaType = json['media_type'];
//     mimeType = json['mime_type'];
//     mediaDetails = json['media_details'] != null ? new MediaDetails.fromJson(json['media_details']) : null;
//     sourceUrl = json['source_url'];
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['slug'] = this.slug;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     data['author'] = this.author;
//     if (this.caption != null) {
//       data['caption'] = this.caption!.toJson();
//     }
//     data['alt_text'] = this.altText;
//     data['media_type'] = this.mediaType;
//     data['mime_type'] = this.mimeType;
//     if (this.mediaDetails != null) {
//       data['media_details'] = this.mediaDetails!.toJson();
//     }
//     data['source_url'] = this.sourceUrl;
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class Sizes {
//   WoocommerceThumbnail? woocommerceThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceGalleryThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceSingle;
//   WoocommerceGalleryThumbnail? medium;
//   WoocommerceGalleryThumbnail? large;
//   WoocommerceGalleryThumbnail? thumbnail;
//   WoocommerceGalleryThumbnail? mediumLarge;
//   Full? full;
//
//   Sizes({this.woocommerceThumbnail, this.woocommerceGalleryThumbnail, this.woocommerceSingle, this.medium, this.large, this.thumbnail, this.mediumLarge, this.full});
//
//   Sizes.fromJson(Map<String, dynamic> json) {
//     woocommerceThumbnail = json['woocommerce_thumbnail'] != null ? new WoocommerceThumbnail.fromJson(json['woocommerce_thumbnail']) : null;
//     woocommerceGalleryThumbnail = json['woocommerce_gallery_thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_gallery_thumbnail']) : null;
//     woocommerceSingle = json['woocommerce_single'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_single']) : null;
//     medium = json['medium'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium']) : null;
//     large = json['large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['large']) : null;
//     thumbnail = json['thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['thumbnail']) : null;
//     mediumLarge = json['medium_large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium_large']) : null;
//     full = json['full'] != null ? new Full.fromJson(json['full']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.woocommerceThumbnail != null) {
//       data['woocommerce_thumbnail'] = this.woocommerceThumbnail!.toJson();
//     }
//     if (this.woocommerceGalleryThumbnail != null) {
//       data['woocommerce_gallery_thumbnail'] = this.woocommerceGalleryThumbnail!.toJson();
//     }
//     if (this.woocommerceSingle != null) {
//       data['woocommerce_single'] = this.woocommerceSingle!.toJson();
//     }
//     if (this.medium != null) {
//       data['medium'] = this.medium!.toJson();
//     }
//     if (this.large != null) {
//       data['large'] = this.large!.toJson();
//     }
//     if (this.thumbnail != null) {
//       data['thumbnail'] = this.thumbnail!.toJson();
//     }
//     if (this.mediumLarge != null) {
//       data['medium_large'] = this.mediumLarge!.toJson();
//     }
//     if (this.full != null) {
//       data['full'] = this.full!.toJson();
//     }
//     return data;
//   }
// }
// class BlogModel {
//   int? id;
//   String? date;
//   String? dateGmt;
//   Guid? guid;
//   String? modified;
//   String? modifiedGmt;
//   String? slug;
//   String? status;
//   String? type;
//   String? link;
//   Guid? title;
//   Content? content;
//   Content? excerpt;
//   int? author;
//   int? featuredMedia;
//   String? commentStatus;
//   String? pingStatus;
//   bool? sticky;
//   String? template;
//   String? format;
//   List<Null>? meta;
//   List<int>? categories;
//   List<Null>? tags;
//   Links? lLinks;
//   Embedded? eEmbedded;
//
//   BlogModel({this.id, this.date, this.dateGmt, this.guid, this.modified, this.modifiedGmt, this.slug, this.status, this.type, this.link, this.title, this.content, this.excerpt, this.author, this.featuredMedia, this.commentStatus, this.pingStatus, this.sticky, this.template, this.format, this.meta, this.categories, this.tags, this.lLinks, this.eEmbedded});
//
//   BlogModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     dateGmt = json['date_gmt'];
//     guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
//     modified = json['modified'];
//     modifiedGmt = json['modified_gmt'];
//     slug = json['slug'];
//     status = json['status'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     content = json['content'] != null ? new Content.fromJson(json['content']) : null;
//     excerpt = json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
//     author = json['author'];
//     featuredMedia = json['featured_media'];
//     commentStatus = json['comment_status'];
//     pingStatus = json['ping_status'];
//     sticky = json['sticky'];
//     template = json['template'];
//     format = json['format'];
//     if (json['meta'] != null) {
//       meta = <Null>[];
//       json['meta'].forEach((v) { meta!.add(new Null.fromJson(v)); });
//     }
//     categories = json['categories'].cast<int>();
//     if (json['tags'] != null) {
//       tags = <Null>[];
//       json['tags'].forEach((v) { tags!.add(new Null.fromJson(v)); });
//     }
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//     eEmbedded = json['_embedded'] != null ? new Embedded.fromJson(json['_embedded']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['date_gmt'] = this.dateGmt;
//     if (this.guid != null) {
//       data['guid'] = this.guid!.toJson();
//     }
//     data['modified'] = this.modified;
//     data['modified_gmt'] = this.modifiedGmt;
//     data['slug'] = this.slug;
//     data['status'] = this.status;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     if (this.content != null) {
//       data['content'] = this.content!.toJson();
//     }
//     if (this.excerpt != null) {
//       data['excerpt'] = this.excerpt!.toJson();
//     }
//     data['author'] = this.author;
//     data['featured_media'] = this.featuredMedia;
//     data['comment_status'] = this.commentStatus;
//     data['ping_status'] = this.pingStatus;
//     data['sticky'] = this.sticky;
//     data['template'] = this.template;
//     data['format'] = this.format;
//     if (this.meta != null) {
//       data['meta'] = this.meta!.map((v) => v.toJson()).toList();
//     }
//     data['categories'] = this.categories;
//     if (this.tags != null) {
//       data['tags'] = this.tags!.map((v) => v.toJson()).toList();
//     }
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     if (this.eEmbedded != null) {
//       data['_embedded'] = this.eEmbedded!.toJson();
//     }
//     return data;
//   }
// }
//
// class Guid {
//   String? rendered;
//
//   Guid({this.rendered});
//
//   Guid.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rendered'] = this.rendered;
//     return data;
//   }
// }
//
// class Content {
//   String? rendered;
//   bool? protected;
//
//   Content({this.rendered, this.protected});
//
//   Content.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//     protected = json['protected'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['rendered'] = this.rendered;
//     data['protected'] = this.protected;
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//   List<About>? about;
//   List<Author>? author;
//   List<Replies>? replies;
//   List<VersionHistory>? versionHistory;
//   List<PredecessorVersion>? predecessorVersion;
//   List<WpFeaturedmedia>? wpFeaturedmedia;
//   List<WpAttachment>? wpAttachment;
//   List<WpTerm>? wpTerm;
//   List<Curies>? curies;
//
//   Links({this.self, this.collection, this.about, this.author, this.replies, this.versionHistory, this.predecessorVersion, this.wpFeaturedmedia, this.wpAttachment, this.wpTerm, this.curies});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) { self!.add(new Self.fromJson(v)); });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) { collection!.add(new Collection.fromJson(v)); });
//     }
//     if (json['about'] != null) {
//       about = <About>[];
//       json['about'].forEach((v) { about!.add(new About.fromJson(v)); });
//     }
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) { author!.add(new Author.fromJson(v)); });
//     }
//     if (json['replies'] != null) {
//       replies = <Replies>[];
//       json['replies'].forEach((v) { replies!.add(new Replies.fromJson(v)); });
//     }
//     if (json['version-history'] != null) {
//       versionHistory = <VersionHistory>[];
//       json['version-history'].forEach((v) { versionHistory!.add(new VersionHistory.fromJson(v)); });
//     }
//     if (json['predecessor-version'] != null) {
//       predecessorVersion = <PredecessorVersion>[];
//       json['predecessor-version'].forEach((v) { predecessorVersion!.add(new PredecessorVersion.fromJson(v)); });
//     }
//     if (json['wp:featuredmedia'] != null) {
//       wpFeaturedmedia = <WpFeaturedmedia>[];
//       json['wp:featuredmedia'].forEach((v) { wpFeaturedmedia!.add(new WpFeaturedmedia.fromJson(v)); });
//     }
//     if (json['wp:attachment'] != null) {
//       wpAttachment = <WpAttachment>[];
//       json['wp:attachment'].forEach((v) { wpAttachment!.add(new WpAttachment.fromJson(v)); });
//     }
//     if (json['wp:term'] != null) {
//       wpTerm = <WpTerm>[];
//       json['wp:term'].forEach((v) { wpTerm!.add(new WpTerm.fromJson(v)); });
//     }
//     if (json['curies'] != null) {
//       curies = <Curies>[];
//       json['curies'].forEach((v) { curies!.add(new Curies.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     if (this.collection != null) {
//       data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     }
//     if (this.about != null) {
//       data['about'] = this.about!.map((v) => v.toJson()).toList();
//     }
//     if (this.author != null) {
//       data['author'] = this.author!.map((v) => v.toJson()).toList();
//     }
//     if (this.replies != null) {
//       data['replies'] = this.replies!.map((v) => v.toJson()).toList();
//     }
//     if (this.versionHistory != null) {
//       data['version-history'] = this.versionHistory!.map((v) => v.toJson()).toList();
//     }
//     if (this.predecessorVersion != null) {
//       data['predecessor-version'] = this.predecessorVersion!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpFeaturedmedia != null) {
//       data['wp:featuredmedia'] = this.wpFeaturedmedia!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpAttachment != null) {
//       data['wp:attachment'] = this.wpAttachment!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpTerm != null) {
//       data['wp:term'] = this.wpTerm!.map((v) => v.toJson()).toList();
//     }
//     if (this.curies != null) {
//       data['curies'] = this.curies!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Self {
//   String? href;
//
//   Self({this.href});
//
//   Self.fromJson(Map<String, dynamic> json) {
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class Author {
//   bool? embeddable;
//   String? href;
//
//   Author({this.embeddable, this.href});
//
//   Author.fromJson(Map<String, dynamic> json) {
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['embeddable'] = this.embeddable;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class VersionHistory {
//   int? count;
//   String? href;
//
//   VersionHistory({this.count, this.href});
//
//   VersionHistory.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['count'] = this.count;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class PredecessorVersion {
//   int? id;
//   String? href;
//
//   PredecessorVersion({this.id, this.href});
//
//   PredecessorVersion.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class WpTerm {
//   String? taxonomy;
//   bool? embeddable;
//   String? href;
//
//   WpTerm({this.taxonomy, this.embeddable, this.href});
//
//   WpTerm.fromJson(Map<String, dynamic> json) {
//     taxonomy = json['taxonomy'];
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['taxonomy'] = this.taxonomy;
//     data['embeddable'] = this.embeddable;
//     data['href'] = this.href;
//     return data;
//   }
// }
//
// class Curies {
//   String? name;
//   String? href;
//   bool? templated;
//
//   Curies({this.name, this.href, this.templated});
//
//   Curies.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     href = json['href'];
//     templated = json['templated'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['name'] = this.name;
//     data['href'] = this.href;
//     data['templated'] = this.templated;
//     return data;
//   }
// }
//
// class Embedded {
//   List<Author>? author;
//   List<WpFeaturedmedia>? wpFeaturedmedia;
//   List<List>? wpTerm;
//
//   Embedded({this.author, this.wpFeaturedmedia, this.wpTerm});
//
//   Embedded.fromJson(Map<String, dynamic> json) {
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) { author!.add(new Author.fromJson(v)); });
//     }
//     if (json['wp:featuredmedia'] != null) {
//       wpFeaturedmedia = <WpFeaturedmedia>[];
//       json['wp:featuredmedia'].forEach((v) { wpFeaturedmedia!.add(new WpFeaturedmedia.fromJson(v)); });
//     }
//     if (json['wp:term'] != null) {
//       wpTerm = <List>[];
//       json['wp:term'].forEach((v) { wpTerm!.add(new List.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.author != null) {
//       data['author'] = this.author!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpFeaturedmedia != null) {
//       data['wp:featuredmedia'] = this.wpFeaturedmedia!.map((v) => v.toJson()).toList();
//     }
//     if (this.wpTerm != null) {
//       data['wp:term'] = this.wpTerm!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Author {
//   int? id;
//   String? name;
//   String? url;
//   String? description;
//   String? link;
//   String? slug;
//   AvatarUrls? avatarUrls;
//   bool? isSuperAdmin;
//   WoocommerceMeta? woocommerceMeta;
//   Links? lLinks;
//
//   Author({this.id, this.name, this.url, this.description, this.link, this.slug, this.avatarUrls, this.isSuperAdmin, this.woocommerceMeta, this.lLinks});
//
//   Author.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     url = json['url'];
//     description = json['description'];
//     link = json['link'];
//     slug = json['slug'];
//     avatarUrls = json['avatar_urls'] != null ? new AvatarUrls.fromJson(json['avatar_urls']) : null;
//     isSuperAdmin = json['is_super_admin'];
//     woocommerceMeta = json['woocommerce_meta'] != null ? new WoocommerceMeta.fromJson(json['woocommerce_meta']) : null;
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['url'] = this.url;
//     data['description'] = this.description;
//     data['link'] = this.link;
//     data['slug'] = this.slug;
//     if (this.avatarUrls != null) {
//       data['avatar_urls'] = this.avatarUrls!.toJson();
//     }
//     data['is_super_admin'] = this.isSuperAdmin;
//     if (this.woocommerceMeta != null) {
//       data['woocommerce_meta'] = this.woocommerceMeta!.toJson();
//     }
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class AvatarUrls {
//   String? s24;
//   String? s48;
//   String? s96;
//
//   AvatarUrls({this.s24, this.s48, this.s96});
//
//   AvatarUrls.fromJson(Map<String, dynamic> json) {
//     s24 = json['24'];
//     s48 = json['48'];
//     s96 = json['96'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['24'] = this.s24;
//     data['48'] = this.s48;
//     data['96'] = this.s96;
//     return data;
//   }
// }
//
// class WoocommerceMeta {
//   String? activityPanelInboxLastRead;
//   String? activityPanelReviewsLastRead;
//   String? categoriesReportColumns;
//   String? couponsReportColumns;
//   String? customersReportColumns;
//   String? ordersReportColumns;
//   String? productsReportColumns;
//   String? revenueReportColumns;
//   String? taxesReportColumns;
//   String? variationsReportColumns;
//   String? dashboardSections;
//   String? dashboardChartType;
//   String? dashboardChartInterval;
//   String? dashboardLeaderboardRows;
//   String? homepageLayout;
//   String? homepageStats;
//   String? taskListTrackedStartedTasks;
//   String? helpPanelHighlightShown;
//   String? androidAppBannerDismissed;
//
//   WoocommerceMeta({this.activityPanelInboxLastRead, this.activityPanelReviewsLastRead, this.categoriesReportColumns, this.couponsReportColumns, this.customersReportColumns, this.ordersReportColumns, this.productsReportColumns, this.revenueReportColumns, this.taxesReportColumns, this.variationsReportColumns, this.dashboardSections, this.dashboardChartType, this.dashboardChartInterval, this.dashboardLeaderboardRows, this.homepageLayout, this.homepageStats, this.taskListTrackedStartedTasks, this.helpPanelHighlightShown, this.androidAppBannerDismissed});
//
//   WoocommerceMeta.fromJson(Map<String, dynamic> json) {
//     activityPanelInboxLastRead = json['activity_panel_inbox_last_read'];
//     activityPanelReviewsLastRead = json['activity_panel_reviews_last_read'];
//     categoriesReportColumns = json['categories_report_columns'];
//     couponsReportColumns = json['coupons_report_columns'];
//     customersReportColumns = json['customers_report_columns'];
//     ordersReportColumns = json['orders_report_columns'];
//     productsReportColumns = json['products_report_columns'];
//     revenueReportColumns = json['revenue_report_columns'];
//     taxesReportColumns = json['taxes_report_columns'];
//     variationsReportColumns = json['variations_report_columns'];
//     dashboardSections = json['dashboard_sections'];
//     dashboardChartType = json['dashboard_chart_type'];
//     dashboardChartInterval = json['dashboard_chart_interval'];
//     dashboardLeaderboardRows = json['dashboard_leaderboard_rows'];
//     homepageLayout = json['homepage_layout'];
//     homepageStats = json['homepage_stats'];
//     taskListTrackedStartedTasks = json['task_list_tracked_started_tasks'];
//     helpPanelHighlightShown = json['help_panel_highlight_shown'];
//     androidAppBannerDismissed = json['android_app_banner_dismissed'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['activity_panel_inbox_last_read'] = this.activityPanelInboxLastRead;
//     data['activity_panel_reviews_last_read'] = this.activityPanelReviewsLastRead;
//     data['categories_report_columns'] = this.categoriesReportColumns;
//     data['coupons_report_columns'] = this.couponsReportColumns;
//     data['customers_report_columns'] = this.customersReportColumns;
//     data['orders_report_columns'] = this.ordersReportColumns;
//     data['products_report_columns'] = this.productsReportColumns;
//     data['revenue_report_columns'] = this.revenueReportColumns;
//     data['taxes_report_columns'] = this.taxesReportColumns;
//     data['variations_report_columns'] = this.variationsReportColumns;
//     data['dashboard_sections'] = this.dashboardSections;
//     data['dashboard_chart_type'] = this.dashboardChartType;
//     data['dashboard_chart_interval'] = this.dashboardChartInterval;
//     data['dashboard_leaderboard_rows'] = this.dashboardLeaderboardRows;
//     data['homepage_layout'] = this.homepageLayout;
//     data['homepage_stats'] = this.homepageStats;
//     data['task_list_tracked_started_tasks'] = this.taskListTrackedStartedTasks;
//     data['help_panel_highlight_shown'] = this.helpPanelHighlightShown;
//     data['android_app_banner_dismissed'] = this.androidAppBannerDismissed;
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//
//   Links({this.self, this.collection});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) { self!.add(new Self.fromJson(v)); });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) { collection!.add(new Collection.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     if (this.collection != null) {
//       data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class WpFeaturedmedia {
//   int? id;
//   String? date;
//   String? slug;
//   String? type;
//   String? link;
//   Guid? title;
//   int? author;
//   Guid? caption;
//   String? altText;
//   String? mediaType;
//   String? mimeType;
//   MediaDetails? mediaDetails;
//   String? sourceUrl;
//   Links? lLinks;
//
//   WpFeaturedmedia({this.id, this.date, this.slug, this.type, this.link, this.title, this.author, this.caption, this.altText, this.mediaType, this.mimeType, this.mediaDetails, this.sourceUrl, this.lLinks});
//
//   WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     slug = json['slug'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     author = json['author'];
//     caption = json['caption'] != null ? new Guid.fromJson(json['caption']) : null;
//     altText = json['alt_text'];
//     mediaType = json['media_type'];
//     mimeType = json['mime_type'];
//     mediaDetails = json['media_details'] != null ? new MediaDetails.fromJson(json['media_details']) : null;
//     sourceUrl = json['source_url'];
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['slug'] = this.slug;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     data['author'] = this.author;
//     if (this.caption != null) {
//       data['caption'] = this.caption!.toJson();
//     }
//     data['alt_text'] = this.altText;
//     data['media_type'] = this.mediaType;
//     data['mime_type'] = this.mimeType;
//     if (this.mediaDetails != null) {
//       data['media_details'] = this.mediaDetails!.toJson();
//     }
//     data['source_url'] = this.sourceUrl;
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class MediaDetails {
//   int? width;
//   int? height;
//   String? file;
//   int? filesize;
//   Sizes? sizes;
//   ImageMeta? imageMeta;
//
//   MediaDetails({this.width, this.height, this.file, this.filesize, this.sizes, this.imageMeta});
//
//   MediaDetails.fromJson(Map<String, dynamic> json) {
//     width = json['width'];
//     height = json['height'];
//     file = json['file'];
//     filesize = json['filesize'];
//     sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
//     imageMeta = json['image_meta'] != null ? new ImageMeta.fromJson(json['image_meta']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['file'] = this.file;
//     data['filesize'] = this.filesize;
//     if (this.sizes != null) {
//       data['sizes'] = this.sizes!.toJson();
//     }
//     if (this.imageMeta != null) {
//       data['image_meta'] = this.imageMeta!.toJson();
//     }
//     return data;
//   }
// }
//
// class Sizes {
//   WoocommerceThumbnail? woocommerceThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceGalleryThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceSingle;
//   WoocommerceGalleryThumbnail? medium;
//   WoocommerceGalleryThumbnail? large;
//   WoocommerceGalleryThumbnail? thumbnail;
//   WoocommerceGalleryThumbnail? mediumLarge;
//   Full? full;
//
//   Sizes({this.woocommerceThumbnail, this.woocommerceGalleryThumbnail, this.woocommerceSingle, this.medium, this.large, this.thumbnail, this.mediumLarge, this.full});
//
//   Sizes.fromJson(Map<String, dynamic> json) {
//     woocommerceThumbnail = json['woocommerce_thumbnail'] != null ? new WoocommerceThumbnail.fromJson(json['woocommerce_thumbnail']) : null;
//     woocommerceGalleryThumbnail = json['woocommerce_gallery_thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_gallery_thumbnail']) : null;
//     woocommerceSingle = json['woocommerce_single'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_single']) : null;
//     medium = json['medium'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium']) : null;
//     large = json['large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['large']) : null;
//     thumbnail = json['thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['thumbnail']) : null;
//     mediumLarge = json['medium_large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium_large']) : null;
//     full = json['full'] != null ? new Full.fromJson(json['full']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.woocommerceThumbnail != null) {
//       data['woocommerce_thumbnail'] = this.woocommerceThumbnail!.toJson();
//     }
//     if (this.woocommerceGalleryThumbnail != null) {
//       data['woocommerce_gallery_thumbnail'] = this.woocommerceGalleryThumbnail!.toJson();
//     }
//     if (this.woocommerceSingle != null) {
//       data['woocommerce_single'] = this.woocommerceSingle!.toJson();
//     }
//     if (this.medium != null) {
//       data['medium'] = this.medium!.toJson();
//     }
//     if (this.large != null) {
//       data['large'] = this.large!.toJson();
//     }
//     if (this.thumbnail != null) {
//       data['thumbnail'] = this.thumbnail!.toJson();
//     }
//     if (this.mediumLarge != null) {
//       data['medium_large'] = this.mediumLarge!.toJson();
//     }
//     if (this.full != null) {
//       data['full'] = this.full!.toJson();
//     }
//     return data;
//   }
// }
//
// class WoocommerceThumbnail {
//   String? file;
//   int? width;
//   int? height;
//   int? filesize;
//   bool? uncropped;
//   String? mimeType;
//   String? sourceUrl;
//
//   WoocommerceThumbnail({this.file, this.width, this.height, this.filesize, this.uncropped, this.mimeType, this.sourceUrl});
//
//   WoocommerceThumbnail.fromJson(Map<String, dynamic> json) {
//     file = json['file'];
//     width = json['width'];
//     height = json['height'];
//     filesize = json['filesize'];
//     uncropped = json['uncropped'];
//     mimeType = json['mime_type'];
//     sourceUrl = json['source_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file'] = this.file;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['filesize'] = this.filesize;
//     data['uncropped'] = this.uncropped;
//     data['mime_type'] = this.mimeType;
//     data['source_url'] = this.sourceUrl;
//     return data;
//   }
// }
//
// class WoocommerceGalleryThumbnail {
//   String? file;
//   int? width;
//   int? height;
//   int? filesize;
//   String? mimeType;
//   String? sourceUrl;
//
//   WoocommerceGalleryThumbnail({this.file, this.width, this.height, this.filesize, this.mimeType, this.sourceUrl});
//
//   WoocommerceGalleryThumbnail.fromJson(Map<String, dynamic> json) {
//     file = json['file'];
//     width = json['width'];
//     height = json['height'];
//     filesize = json['filesize'];
//     mimeType = json['mime_type'];
//     sourceUrl = json['source_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file'] = this.file;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['filesize'] = this.filesize;
//     data['mime_type'] = this.mimeType;
//     data['source_url'] = this.sourceUrl;
//     return data;
//   }
// }
//
// class Full {
//   String? file;
//   int? width;
//   int? height;
//   String? mimeType;
//   String? sourceUrl;
//
//   Full({this.file, this.width, this.height, this.mimeType, this.sourceUrl});
//
//   Full.fromJson(Map<String, dynamic> json) {
//     file = json['file'];
//     width = json['width'];
//     height = json['height'];
//     mimeType = json['mime_type'];
//     sourceUrl = json['source_url'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['file'] = this.file;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     data['mime_type'] = this.mimeType;
//     data['source_url'] = this.sourceUrl;
//     return data;
//   }
// }
//
// class ImageMeta {
//   String? aperture;
//   String? credit;
//   String? camera;
//   String? caption;
//   String? createdTimestamp;
//   String? copyright;
//   String? focalLength;
//   String? iso;
//   String? shutterSpeed;
//   String? title;
//   String? orientation;
//   List<Null>? keywords;
//
//   ImageMeta({this.aperture, this.credit, this.camera, this.caption, this.createdTimestamp, this.copyright, this.focalLength, this.iso, this.shutterSpeed, this.title, this.orientation, this.keywords});
//
//   ImageMeta.fromJson(Map<String, dynamic> json) {
//     aperture = json['aperture'];
//     credit = json['credit'];
//     camera = json['camera'];
//     caption = json['caption'];
//     createdTimestamp = json['created_timestamp'];
//     copyright = json['copyright'];
//     focalLength = json['focal_length'];
//     iso = json['iso'];
//     shutterSpeed = json['shutter_speed'];
//     title = json['title'];
//     orientation = json['orientation'];
//     if (json['keywords'] != null) {
//       keywords = <Null>[];
//       json['keywords'].forEach((v) { keywords!.add(new Null.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['aperture'] = this.aperture;
//     data['credit'] = this.credit;
//     data['camera'] = this.camera;
//     data['caption'] = this.caption;
//     data['created_timestamp'] = this.createdTimestamp;
//     data['copyright'] = this.copyright;
//     data['focal_length'] = this.focalLength;
//     data['iso'] = this.iso;
//     data['shutter_speed'] = this.shutterSpeed;
//     data['title'] = this.title;
//     data['orientation'] = this.orientation;
//     if (this.keywords != null) {
//       data['keywords'] = this.keywords!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//   List<About>? about;
//   List<Author>? author;
//   List<Replies>? replies;
//
//   Links({this.self, this.collection, this.about, this.author, this.replies});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) { self!.add(new Self.fromJson(v)); });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) { collection!.add(new Collection.fromJson(v)); });
//     }
//     if (json['about'] != null) {
//       about = <About>[];
//       json['about'].forEach((v) { about!.add(new About.fromJson(v)); });
//     }
//     if (json['author'] != null) {
//       author = <Author>[];
//       json['author'].forEach((v) { author!.add(new Author.fromJson(v)); });
//     }
//     if (json['replies'] != null) {
//       replies = <Replies>[];
//       json['replies'].forEach((v) { replies!.add(new Replies.fromJson(v)); });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     if (this.collection != null) {
//       data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     }
//     if (this.about != null) {
//       data['about'] = this.about!.map((v) => v.toJson()).toList();
//     }
//     if (this.author != null) {
//       data['author'] = this.author!.map((v) => v.toJson()).toList();
//     }
//     if (this.replies != null) {
//       data['replies'] = this.replies!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class WpTerm {
//
//
//   WpTerm({});
//
// WpTerm.fromJson(Map<String, dynamic> json) {
// }
//
// Map<String, dynamic> toJson() {
//   final Map<String, dynamic> data = new Map<String, dynamic>();
//   return data;
// }
// }
//
// class BlogModel {
//   int? id;
//   String? date;
//   String? dateGmt;
//   Guid? guid;
//   String? modified;
//   String? modifiedGmt;
//   String? slug;
//   String? status;
//   String? type;
//   String? link;
//   Guid? title;
//   Content? content;
//   Content? excerpt;
//   int? author;
//   int? featuredMedia;
//   String? commentStatus;
//   String? pingStatus;
//   bool? sticky;
//   String? template;
//   String? format;
//   List<Null>? meta;
//   List<int>? categories;
//   List<Null>? tags;
//   Links? lLinks;
//   Embedded? eEmbedded;
//
//   BlogModel({this.id, this.date, this.dateGmt, this.guid, this.modified, this.modifiedGmt, this.slug, this.status, this.type, this.link, this.title, this.content, this.excerpt, this.author, this.featuredMedia, this.commentStatus, this.pingStatus, this.sticky, this.template, this.format, this.meta, this.categories, this.tags, this.lLinks, this.eEmbedded});
//
//   BlogModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     dateGmt = json['date_gmt'];
//     guid = json['guid'] != null ? new Guid.fromJson(json['guid']) : null;
//     modified = json['modified'];
//     modifiedGmt = json['modified_gmt'];
//     slug = json['slug'];
//     status = json['status'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     content = json['content'] != null ? new Content.fromJson(json['content']) : null;
//     excerpt = json['excerpt'] != null ? new Content.fromJson(json['excerpt']) : null;
//     author = json['author'];
//     featuredMedia = json['featured_media'];
//     commentStatus = json['comment_status'];
//     pingStatus = json['ping_status'];
//     sticky = json['sticky'];
//     template = json['template'];
//     format = json['format'];
//     if (json['meta'] != null) {
//       meta = <Null>[];
//       json['meta'].forEach((v) { meta!.add(new Null.fromJson(v)); });
//     }
//     categories = json['categories'].cast<int>();
//     if (json['tags'] != null) {
//       tags = <Null>[];
//       json['tags'].forEach((v) { tags!.add(new Null.fromJson(v)); });
//     }
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//     eEmbedded = json['_embedded'] != null ? new Embedded.fromJson(json['_embedded']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['date_gmt'] = this.dateGmt;
//     if (this.guid != null) {
//       data['guid'] = this.guid!.toJson();
//     }
//     data['modified'] = this.modified;
//     data['modified_gmt'] = this.modifiedGmt;
//     data['slug'] = this.slug;
//     data['status'] = this.status;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     if (this.content != null) {
//       data['content'] = this.content!.toJson();
//     }
//     if (this.excerpt != null) {
//       data['excerpt'] = this.excerpt!.toJson();
//     }
//     data['author'] = this.author;
//     data['featured_media'] = this.featuredMedia;
//     data['comment_status'] = this.commentStatus;
//     data['ping_status'] = this.pingStatus;
//     data['sticky'] = this.sticky;
//     data['template'] = this.template;
//     data['format'] = this.format;
//     if (this.meta != null) {
//       data['meta'] = this.meta!.map((v) => v.toJson()).toList();
//     }
//     data['categories'] = this.categories;
//     if (this.tags != null) {
//       data['tags'] = this.tags!.map((v) => v.toJson()).toList();
//     }
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     if (this.eEmbedded != null) {
//       data['_embedded'] = this.eEmbedded!.toJson();
//     }
//     return data;
//   }
// }
//
// class WpFeaturedmedia {
//   int? id;
//   String? date;
//   String? slug;
//   String? type;
//   String? link;
//   Guid? title;
//   int? author;
//   Guid? caption;
//   String? altText;
//   String? mediaType;
//   String? mimeType;
//   MediaDetails? mediaDetails;
//   String? sourceUrl;
//   Links? lLinks;
//
//   WpFeaturedmedia({this.id, this.date, this.slug, this.type, this.link, this.title, this.author, this.caption, this.altText, this.mediaType, this.mimeType, this.mediaDetails, this.sourceUrl, this.lLinks});
//
//   WpFeaturedmedia.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     slug = json['slug'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? new Guid.fromJson(json['title']) : null;
//     author = json['author'];
//     caption = json['caption'] != null ? new Guid.fromJson(json['caption']) : null;
//     altText = json['alt_text'];
//     mediaType = json['media_type'];
//     mimeType = json['mime_type'];
//     mediaDetails = json['media_details'] != null ? new MediaDetails.fromJson(json['media_details']) : null;
//     sourceUrl = json['source_url'];
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date'] = this.date;
//     data['slug'] = this.slug;
//     data['type'] = this.type;
//     data['link'] = this.link;
//     if (this.title != null) {
//       data['title'] = this.title!.toJson();
//     }
//     data['author'] = this.author;
//     if (this.caption != null) {
//       data['caption'] = this.caption!.toJson();
//     }
//     data['alt_text'] = this.altText;
//     data['media_type'] = this.mediaType;
//     data['mime_type'] = this.mimeType;
//     if (this.mediaDetails != null) {
//       data['media_details'] = this.mediaDetails!.toJson();
//     }
//     data['source_url'] = this.sourceUrl;
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class Sizes {
//   WoocommerceThumbnail? woocommerceThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceGalleryThumbnail;
//   WoocommerceGalleryThumbnail? woocommerceSingle;
//   WoocommerceGalleryThumbnail? medium;
//   WoocommerceGalleryThumbnail? large;
//   WoocommerceGalleryThumbnail? thumbnail;
//   WoocommerceGalleryThumbnail? mediumLarge;
//   Full? full;
//
//   Sizes({this.woocommerceThumbnail, this.woocommerceGalleryThumbnail, this.woocommerceSingle, this.medium, this.large, this.thumbnail, this.mediumLarge, this.full});
//
//   Sizes.fromJson(Map<String, dynamic> json) {
//     woocommerceThumbnail = json['woocommerce_thumbnail'] != null ? new WoocommerceThumbnail.fromJson(json['woocommerce_thumbnail']) : null;
//     woocommerceGalleryThumbnail = json['woocommerce_gallery_thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_gallery_thumbnail']) : null;
//     woocommerceSingle = json['woocommerce_single'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['woocommerce_single']) : null;
//     medium = json['medium'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium']) : null;
//     large = json['large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['large']) : null;
//     thumbnail = json['thumbnail'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['thumbnail']) : null;
//     mediumLarge = json['medium_large'] != null ? new WoocommerceGalleryThumbnail.fromJson(json['medium_large']) : null;
//     full = json['full'] != null ? new Full.fromJson(json['full']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.woocommerceThumbnail != null) {
//       data['woocommerce_thumbnail'] = this.woocommerceThumbnail!.toJson();
//     }
//     if (this.woocommerceGalleryThumbnail != null) {
//       data['woocommerce_gallery_thumbnail'] = this.woocommerceGalleryThumbnail!.toJson();
//     }
//     if (this.woocommerceSingle != null) {
//       data['woocommerce_single'] = this.woocommerceSingle!.toJson();
//     }
//     if (this.medium != null) {
//       data['medium'] = this.medium!.toJson();
//     }
//     if (this.large != null) {
//       data['large'] = this.large!.toJson();
//     }
//     if (this.thumbnail != null) {
//       data['thumbnail'] = this.thumbnail!.toJson();
//     }
//     if (this.mediumLarge != null) {
//       data['medium_large'] = this.mediumLarge!.toJson();
//     }
//     if (this.full != null) {
//       data['full'] = this.full!.toJson();
//     }
//     return data;
//   }
// }
