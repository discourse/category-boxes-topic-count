import Component from "@ember/component";
import { tagName } from "@ember-decorators/component";
import CategoryUnread from "discourse/components/category-unread";
import htmlSafe from "discourse/helpers/html-safe";
import { i18n } from "discourse-i18n";

@tagName("")
export default class TopicCounts extends Component {
  <template>
    <div class="custom-topic-count">
      <span class="custom-topic-count-title">{{i18n
          "categories.topics"
        }}:</span>
      <div class="custom-topic-count-topics">
        <div title={{this.category.statTitle}}>{{htmlSafe
            this.category.stat
          }}</div>
        <CategoryUnread
          @category={{this.category}}
          @tagName="div"
          @class="unread-new"
        />
      </div>
    </div>
  </template>
}
